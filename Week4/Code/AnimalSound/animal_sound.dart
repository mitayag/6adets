// File: animal_sound.dart

// Base class (Parent)
class Animal {
  String name;

  Animal(this.name);

  // Method that will be overridden
  void makeSound() {
    print("$name makes a sound.");
  }
}

// Subclass 1 (Child)
class Dog extends Animal {
  Dog(String name) : super(name);

  // Overriding method - polymorphism
  @override
  void makeSound() {
    print("$name barks: Woof! Woof!");
  }
}

// Subclass 2 (Child)
class Cat extends Animal {
  Cat(String name) : super(name);

  // Overriding method - polymorphism
  @override
  void makeSound() {
    print("$name meows: Meow! Meow!");
  }
}

void main() {
  // Create objects of different subclasses
  Animal dog = Dog("Buddy");
  Animal cat = Cat("Whiskers");

  // Polymorphism in action
  List<Animal> animals = [dog, cat];

  for (var animal in animals) {
    animal.makeSound(); // Calls overridden method depending on object type
  }
}
