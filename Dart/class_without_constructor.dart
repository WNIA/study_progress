/**
 * A class is used to construct objects like map, lists, sets, etc.
 * A Dart class is created using `class` keyword.
 * A Dart class automatically inherits from `Object` class.
 * A Dart class constructor has the same name as the class.
 * Any properties defined without a `static` keyword are instance properties.
 *
 * An object from a class is created using `ClassName()` or `new ClassName()` syntax.
 * Sicne Dart v2, `new` keyword to create an object is optional.
 *
 * `this` keyword inside an instance method points to the object itself.
 * `@override` annotation is used to mark a method that is overriding the method defined in the inherited class.
 * 
 * 🔥 TIPS:
 * 1. All static variables and methods are accessible by their names directly in static or instance methods.
 * 2. All instance variables and methods are accessible by their names directly in instance methods.
 * 3. It is recommended to use `this` to remove ambiguity between function parameters and static/instance variables.
 */
void main() {
  Person ross = Person();
  ross.firstName = 'Ross';
  ross.lastName = 'Gallilio';

  print("Full name: ${ross.getFullName()}");
  print("ross object: $ross");
  print("toString: ${ross.toString()}");
}

// simple Person class
class Person {
  // A static variables are accessed on the class
  static String company = 'AWESOME LLC.';
   // instance variables with `null` value
  late String firstName, lastName;
  // instance variable with initial `18` value
  var age = 18;

  //instance methods
  String getFullName() {
    return this.firstName +" "+this.lastName; //this points to the object itself;
  }

  //static method
  static String info() {
    return 'This is a Person class.';
  }

  // `toString` instance method to print string representation of the object
  // it overrides `toString` method defined in `Object` class
  @override
  String toString() {
    
    // since `company` is a static variable, it should be accessed on `Person` class
    return "Name: ${ this.getFullName() }, Age: ${ this.age }, Company: ${ Person.company }, Info: ${ Person.info() }";
  }
}