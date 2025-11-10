// Contact Directory Example
void main() {
  // 1. Create a list to store all contacts (each contact is a Map)
  List<Map<String, String>> contacts = [];

  // 2. Use a Set to ensure unique phone numbers (no duplicates)
  Set<String> phoneNumbers = {};

  // Function to add a new contact
  void addContact(String name, String phone, String email) {
    if (phoneNumbers.contains(phone)) {
      print("⚠️ Contact with phone number $phone already exists!");
    } else {
      contacts.add({
        'name': name,
        'phone': phone,
        'email': email,
      });
      phoneNumbers.add(phone);
      print("✅ Contact added: $name");
    }
  }

  // Function to display all contacts
  void showContacts() {
    print("\n📇 Contact Directory:");
    for (var contact in contacts) {
      print("Name: ${contact['name']}, Phone: ${contact['phone']}, Email: ${contact['email']}");
    }
  }

  // Function to search for a contact by name
  void searchContact(String name) {
    print("\n🔍 Searching for '$name'...");
    bool found = false;

    for (var contact in contacts) {
      if (contact['name']!.toLowerCase() == name.toLowerCase()) {
        print("✅ Found: ${contact['name']} - ${contact['phone']} - ${contact['email']}");
        found = true;
      }
    }

    if (!found) {
      print("❌ No contact found with the name '$name'.");
    }
  }

  // 3. Add some contacts
  addContact("Alice", "09171234567", "alice@example.com");
  addContact("Bob", "09181234567", "bob@example.com");
  addContact("Charlie", "09171234567", "charlie@example.com"); // Duplicate phone!

  // 4. Display all contacts
  showContacts();

  // 5. Search for a contact
  searchContact("Bob");
  searchContact("Diana");
}
