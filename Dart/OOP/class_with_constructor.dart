/**
 * A constructor function of the class is implicitly called by the Dart when an object is created from it.
 * The default constructor method has the same name as the class.
 * 
 * A constructor function is generally used to initialize instance variables,
 * with values passed by the user while creating an object. 
 */
void main() {
  //create 'ross' object
  Person ross = Person('Ross', 'Geller');
  print("Full Name: ${ross.getFullName()}");
  print("Age: ${ross.age}");
}

//Person class with constructor
class Person {
  //instance variables with 'null' value
  String firstName, lastName;

  //instance value with 'null' value
  int age;

  //constructor function
  Person(this.firstName, this.lastName,
      [this.age = 55]); //both {} & [] can be used

  //instance method
  String getFullName() {
    return this.firstName +
        " " +
        this.lastName; //'this' points to the object itself
  }
}
