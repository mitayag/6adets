// Bank Account Manager using Getter and Setter
// Demonstrates encapsulation, data validation, and private variables

class BankAccount {
  // Private variables (encapsulation)
  String _accountHolder = '';
  double _balance = 0.0;

  // Constructor
  BankAccount(this._accountHolder, this._balance);

  // Getter for account holder
  String get accountHolder => _accountHolder;

  // Setter for account holder
  set accountHolder(String name) {
    if (name.isNotEmpty) {
      _accountHolder = name;
    } else {
      print('❌ Account holder name cannot be empty.');
    }
  }

  // Getter for balance
  double get balance => _balance;

  // Setter for balance with validation
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print('❌ Balance cannot be negative.');
    }
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('✅ Deposited: ₱$amount | New Balance: ₱$_balance');
    } else {
      print('❌ Deposit amount must be positive.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('✅ Withdrawn: ₱$amount | Remaining Balance: ₱$_balance');
    } else if (amount > _balance) {
      print('❌ Insufficient funds.');
    } else {
      print('❌ Invalid withdrawal amount.');
    }
  }
}

void main() {
  // Create a new bank account
  var account = BankAccount('Marlon Tayag', 1000.0);

  // Display initial info
  print('👤 Account Holder: ${account.accountHolder}');
  print('💰 Current Balance: ₱${account.balance}\n');

  // Try valid operations
  account.deposit(500.0);
  account.withdraw(300.0);

  // Test validation
  account.balance = -100; // Invalid
  account.accountHolder = ''; // Invalid
  account.withdraw(2000); // Invalid
}
