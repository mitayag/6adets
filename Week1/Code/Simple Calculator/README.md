# 🧮 Simple Calculator in Dart

This is a beginner-friendly example of a **simple calculator** program written in Dart.  
The program performs basic arithmetic operations — **addition, subtraction, multiplication, and division** — using values you can directly change in the code.

---

## 📘 Code

```dart
// Simple Calculator in Dart
void main() {
  // Change these values directly in the code
  double num1 = 10;
  double num2 = 5;

  // Perform basic arithmetic operations
  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double quotient = num1 / num2;

  // Display the results
  print('Number 1: $num1');
  print('Number 2: $num2');
  print('---------------------');
  print('Addition: $sum');
  print('Subtraction: $difference');
  print('Multiplication: $product');
  print('Division: $quotient');
}

