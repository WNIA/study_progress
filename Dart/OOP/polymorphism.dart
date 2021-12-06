/**
 * Polymorphism is the ability of an object to take any form.
 * Everything in Dart is an object and all objects are inherited from `Object` class.
 * Hence for example, a `String` object is both type of `String` and `Object.
 *
 * An object of a class that `inherits` another class, can be represented in both the class types.
 * Also, an object of a class that `implements` another class, can also be represented in both the class types.
 *
 * We use `object.runtimeType` to get actual type of the object at runtime.
 */
void main() {
  //create 'Person' object
  var p = Person("Dose", "Piller");

  //create 'Employee' object
  var e = Employee("Floss", "Boiler", 100);

  // We can call `fullName` function with `p` because it accepts argument of type `Person`
  print("fullname: ${getFullName(p)}");
  // We can call `fullName` function with `e` because `e` is also a type of `Person`
  print('Employee e full name: ${getFullName(e)}');
}

String getFullName(Person person) {
  return "${person.firstName} ${person.lastName}";
}

class Person {
  String firstName, lastName;
  Person(this.firstName, this.lastName);
}

class Employee extends Person {
  int salary;

  //default constructor
  Employee(String firstName, lastName, this.salary)
      : super(firstName, lastName);
}
