
abstract class Animal {
  void makeSound();
}


class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

// Define a base class with inheritance
class Pet {
  String name;

  Pet(this.name);

  void speak() {}
}

// Implement a subclass that overrides an inherited method
class Cat extends Pet {
  Cat(String name) : super(name);

  @override
  void speak() {
    print("$name says: Meow!");
  }
}

// A method that demonstrates the use of a loop
void printMultipleTimes(String message, int times) {
  for (var i = 0; i < times; i++) {
    print(message);
  }
}

class FileReader {
  static String readDataFromFile(String filename) {
    return "Dummy data from file"; 
  }
}

void main() {
  
  var dog = Dog();
  print("Dog says:");
  dog.makeSound();

  var cat = Cat("Whiskers");
  print("Cat's name is ${cat.name}");
  cat.speak();

  printMultipleTimes("Hello, world!", 3);

  var fileData = FileReader.readDataFromFile("data.txt");
  print("Data from file: $fileData");
}
