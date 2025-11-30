// lab4.dart
// Fahriddin Hayitov
// Lab 4 – Dart Console Programming Exercises
// Tuesday 14:00

// 1. Classes

// Sample Task: Car
class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void displayInfo() {
    print('Car Information: $year $make $model');
  }
}

void main() {
  var myCar = Car('Toyota', 'Corolla', 2022);
  myCar.displayInfo();
}

// Task 2 (Easy): Book Class
/*
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

void main() {
  var myBook = Book('The Hobbit', 'J.R.R. Tolkien', 310);
  print('Title: ${myBook.title}');
  print('Author: ${myBook.author}');
  print('Pages: ${myBook.numberOfPages}');
}
*/

// Task 3 (Easy): Student Class
/*
class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) {
      return 0;
    }
    double sum = 0;
    for (var grade in grades) {
      sum += grade;
    }
    return sum / grades.length;
  }
}

void main() {
  var student = Student('Fahriddin', 20, [90, 85, 95]);
  print('Average grade: ${student.calculateAverageGrade()}');
}
*/

// Task 4 (Medium): Bank Account
/*
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: $amount. New balance: $balance');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive.');
      return;
    }
    if (amount > balance) {
      print('Error: Insufficient funds. Current balance: $balance');
    } else {
      balance -= amount;
      print('Withdrew: $amount. New balance: $balance');
    }
  }
}

void main() {
  var account = BankAccount('123456', 'Fahriddin Hayitov', 100);
  account.deposit(50);
  account.withdraw(30);
  account.withdraw(200);
}
*/

// Task 5 (Medium): Rectangle Class with Getters
/*
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;
  double get perimeter => 2 * (width + height);
}

void main() {
  var rect = Rectangle(4, 6);
  print('Area: ${rect.area}');
  print('Perimeter: ${rect.perimeter}');
}
*/

// 2. Enums
// Sample Task: DaysOfWeek
/*
enum DaysOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}

void checkDay(DaysOfWeek day) {
  switch (day) {
    case DaysOfWeek.saturday:
    case DaysOfWeek.sunday:
      print('$day is on the weekend!');
      break;
    default:
      print('$day is a weekday.');
  }
}

void main() {
  checkDay(DaysOfWeek.monday);
  checkDay(DaysOfWeek.saturday);
}
*/

// Task 2 (Easy): Order Status
/*
enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled
}

void main() {
  OrderStatus status = OrderStatus.processing;
  print('Current order status: $status');
}
*/

// Task 3 (Easy): Traffic Light
/*
enum TrafficLight {
  red,
  yellow,
  green
}

String getAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return 'Stop';
    case TrafficLight.yellow:
      return 'Caution';
    case TrafficLight.green:
      return 'Go';
  }
}

void main() {
  for (var light in TrafficLight.values) {
    print('$light: ${getAction(light)}');
  }
}
*/

// Task 4 (Medium): User Roles
/*
enum UserRole {
  admin,
  editor,
  guest
}

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

void main() {
  var user1 = User('Ali', UserRole.admin);
  var user2 = User('Vali', UserRole.guest);

  print('${user1.name} can edit: ${user1.hasEditPermission()}');
  print('${user2.name} can edit: ${user2.hasEditPermission()}');
}
*/

// Task 5 (Medium): Enums with Properties
/*
enum TrafficLight {
  red,
  yellow,
  green;

  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

void main() {
  for (var light in TrafficLight.values) {
    print('${light.name}: ${light.durationInSeconds} seconds');
  }
}
*/


// 3. Inheritance
// Sample Task: Vehicle Hierarchy
/*
class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void display() {
    print('Vehicle: $make $model');
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String make, String model, this.numberOfDoors) : super(make, model);

  @override
  void display() {
    super.display();
    print('Doors: $numberOfDoors');
  }
}

void main() {
  var myCar = Car('Honda', 'Civic', 4);
  myCar.display();
}
*/

// Task 2 (Easy): Animal Sounds
/*
class Animal {
  void makeSound() {}
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  var dog = Dog();
  var cat = Cat();
  dog.makeSound();
  cat.makeSound();
}
*/

// Task 3 (Easy): Shape Hierarchy
/*
class Shape {
  String color;

  Shape(this.color);
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double sideLength;

  Square(String color, this.sideLength) : super(color);
}

void main() {
  var circle = Circle('red', 5.0);
  var square = Square('blue', 4.0);
  print('Circle color: ${circle.color}, radius: ${circle.radius}');
  print('Square color: ${square.color}, side: ${square.sideLength}');
}
*/

// Task 4 (Medium): Employee and Manager
/*
class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

void main() {
  var emp = Employee('Ali', 1000);
  var mgr = Manager('Vali', 1500, 500);
  print('${emp.name} salary: ${emp.calculateSalary()}');
  print('${mgr.name} salary: ${mgr.calculateSalary()}');
}
*/

// Task 5 (Medium): Library Items
/*
class LibraryItem {
  String title;
  String id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return 'Title: $title, ID: $id';
  }
}

class Book extends LibraryItem {
  String author;

  Book(String title, String id, this.author) : super(title, id);

  @override
  String getDetails() {
    return 'Book - Title: $title, ID: $id, Author: $author';
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, String id, this.director) : super(title, id);

  @override
  String getDetails() {
    return 'DVD - Title: $title, ID: $id, Director: $director';
  }
}

void main() {
  var book = Book('1984', 'B001', 'George Orwell');
  var dvd = DVD('Inception', 'D001', 'Christopher Nolan');
  print(book.getDetails());
  print(dvd.getDetails());
}
*/


// 4. Mixins
// Sample Task: Swimmer
/*
mixin Swimmer {
  void swim() {
    print('Moving through the water...');
  }
}

class Human with Swimmer {
  String name;
  Human(this.name);
}

class Fish with Swimmer {
  String species;
  Fish(this.species);
}

void main() {
  var person = Human('Alice');
  var fish = Fish('Tuna');
  person.swim();
  fish.swim();
}
*/

// Task 2 (Easy): Flyer Mixin
/*
mixin Flyer {
  void fly() {
    print('Taking off!');
  }
}

class Bird with Flyer {
  String species;
  Bird(this.species);
}

class Plane with Flyer {
  String model;
  Plane(this.model);
}

void main() {
  var bird = Bird('Eagle');
  var plane = Plane('Boeing 747');
  bird.fly();
  plane.fly();
}
*/

// Task 3 (Easy): Logger Mixin
/*
mixin Logger {
  void log(String message) {
    print('[LOG] $message');
  }
}

class DataService with Logger {
  void fetchData() {
    log('Fetching data');
  }
}

void main() {
  var service = DataService();
  service.fetchData();
}
*/

// Task 4 (Medium): Validator Mixin
/*
mixin Validator {
  bool isEmailValid(String email) {
    return email.contains('@') && email.contains('.');
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void validate(String email, String password) {
    print('Email valid: ${isEmailValid(email)}');
    print('Password strong: ${isPasswordStrong(password)}');
  }
}

void main() {
  var signup = UserSignup();
  signup.validate('test@example.com', 'strongpassword');
}
*/

// Task 5 (Medium): Combining Mixins
/*
mixin Performer {
  void perform() {
    print('Performing on stage');
  }
}

mixin Musician {
  void playInstrument() {
    print('Playing instrument');
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  var dancer = Dancer('Anna');
  var guitarist = Guitarist('Bob');
  dancer.perform();
  guitarist.perform();
  guitarist.playInstrument();
}
*/


// 5. Polymorphism
// Sample Task: Area of Shapes
/*
import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => pi * radius * radius;
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

void main() {
  List<Shape> shapes = [Circle(5.0), Rectangle(4.0, 6.0)];

  for (var shape in shapes) {
    print('A ${shape.runtimeType} has an area of: ${shape.area().toStringAsFixed(2)}');
  }
}
*/

// Task 2 (Easy): Weapon Actions
/*
class Weapon {
  void action() {}
}

class Sword extends Weapon {
  @override
  void action() {
    print('Swinging!');
  }
}

class Bow extends Weapon {
  @override
  void action() {
    print('Firing!');
  }
}

void main() {
  List<Weapon> weapons = [Sword(), Bow()];
  for (var weapon in weapons) {
    weapon.action();
  }
}
*/

// Task 3 (Easy): Animal Feeder
/*
class Animal {
  void eat() {}
}

class Lion extends Animal {
  @override
  void eat() {
    print('Eating meat.');
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print('Eating grass.');
  }
}

void feed(Animal animal) {
  animal.eat();
}

void main() {
  var lion = Lion();
  var goat = Goat();
  feed(lion);
  feed(goat);
}
*/

// Task 4 (Medium): Payment Processing
/*
abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paying $amount with Credit Card');
  }
}

class PayPal extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paying $amount with PayPal');
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

void main() {
  var cc = CreditCard();
  var pp = PayPal();
  processPayment(cc, 100.0);
  processPayment(pp, 50.0);
}
*/

// Task 5 (Medium): Data Formatting System
/*
import 'dart:convert';

abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return jsonEncode(data);
  }
}

class KeyValueFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    var buffer = StringBuffer();
    data.forEach((key, value) {
      buffer.writeln('$key: $value');
    });
    return buffer.toString();
  }
}

void main() {
  Map<String, dynamic> sampleData = {'name': 'Ali', 'age': 21};

  List<DataFormatter> formatters = [JSONFormatter(), KeyValueFormatter()];
  for (var formatter in formatters) {
    print('Using ${formatter.runtimeType}:');
    print(formatter.format(sampleData));
  }
}
*/


// 6. Async Programming
// Sample Task: Fetch User Data
/*
Future<Map<String, dynamic>> fetchUserData() async {
  print('Fetching user data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
  return {'id': 101, 'name': 'Alice'};
}

Future<void> main() async {
  print('Program started.');
  var userData = await fetchUserData();
  print('User Name: ${userData['name']}');
  print('Program finished.');
}
*/

// Task 2 (Easy): Simple Future with .then()
/*
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => 'Report generated!');
}

void main() {
  generateReport().then((result) {
    print(result);
  });
}
*/

// Task 3 (Easy): Rewriting with async/await
/*
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => 'Report generated!');
}

Future<void> main() async {
  String result = await generateReport();
  print(result);
}
*/

// Task 4 (Medium): Chaining Async Calls
/*
Future<int> fetchUserId() {
  return Future.delayed(Duration(seconds: 1), () => 123);
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return 'User #$userId: Ali';
}

Future<void> main() async {
  int userId = await fetchUserId();
  String details = await fetchUserDetails(userId);
  print(details);
}
*/

// Task 5 (Medium): Concurrent Futures
/*
Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Configuration loaded';
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Resources loaded';
}

Future<void> main() async {
  var results = await Future.wait([
    fetchConfiguration(),
    loadResources(),
  ]);
  for (var r in results) {
    print(r);
  }
  print('System Ready');
}
*/


// 7. Exceptions
// Sample Task: Division by Zero
/*
void divide(int a, int b) {
  try {
    var result = a ~/ b;
    print('Result: $result');
  } on IntegerDivisionByZeroException {
    print('Error: Cannot divide by zero.');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

void main() {
  divide(10, 2);
  divide(10, 0);
}
*/

// Task 2 (Easy): Handling Index Out of Bounds
/*
void printElementAt(List list, int index) {
  try {
    print(list[index]);
  } on RangeError {
    print('Error: Invalid index.');
  }
}

void main() {
  var numbers = [1, 2, 3];
  printElementAt(numbers, 1);
  printElementAt(numbers, 5);
}
*/

// Task 3 (Easy/Medium): Catching FormatException
/*
void main() {
  String input = 'abc';
  try {
    int age = int.parse(input);
    print('Age is $age');
  } on FormatException {
    print('Error: Invalid number format.');
  }
}
*/

// Task 4 (Medium): Custom Exceptions
/*
class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => 'InvalidInputException: $message';
}

void processText(String text) {
  if (text.isEmpty) {
    throw InvalidInputException('Input string cannot be empty.');
  }
  print('Processing: $text');
}

void main() {
  try {
    processText('');
  } on InvalidInputException catch (e) {
    print(e);
  }
}
*/

// Task 5 (Medium): Using the finally Block
/*
void readFromDatabase() {
  try {
    print('Reading data from database...');
    throw Exception('Database read error');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Database connection closed.');
  }
}

void main() {
  readFromDatabase();
}
*/


// Dummy main so this combined lab file can compile and run.

void main() {
  print('Lab 4 solutions are included in comments in this file.');
}
// [oai_citation:0‡Lab_4.pdf](sediment://file_0000000057f0720a89da2ca82977cbcf)