/**
 * Dart supports having multiple constructor functions in a class.
 * But only one default constructor function is allowed which will be called implicitly.
 * Other constructor function must be registered with `MyClass.constructorName() {}` syntax.
 *
 * While creating an object, we can specify a constructor function using below syntax.
 * -> var obj = new MyClass.constructorName();
 *
 * When it comes to a constructor function whose only job is to initialize instance variables,
 * Dart provides an easier syntax to write default or named constructor function.
 * -> MyClass( this.instVarOne, this.instVarTwo, [ this.instVarThree = 'DefaultVal' ] );
 */
void main() {
  //create 'ross' object
  Person ross = Person.initWithUpperCase("Moss", "Steller");
  print("Full name: ${ross.getFullName()}");
}

class Person {
  // instance variables with `null` value
  String firstName, lastName;
  // instance variables with `null` value
  int age;

  // default constructor function
  Person(this.firstName, this.lastName, {this.age = 18});

  // named constructor: initWithUpperCase
  Person.initWithUpperCase(this.firstName, this.lastName, {this.age = 20}) {
    this.firstName = firstName.toUpperCase();
    this.lastName = lastName.toUpperCase();
    this.age = age;
  }

  //instance methods
  String getFullName() {
    return this.firstName + " " + this.lastName+" age: ${this.age}";
  }
}
