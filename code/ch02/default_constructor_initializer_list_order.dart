// This code shows that when using the default (no-arg) constructor of
// a class and its superclass, and an initializer list on the class,
// things happen in this order:
//
// 1. initializer list executes
// 2. superclass's no-arg constructor is called
// 3. main class's no-arg constructor is called
//
int numPeople = 0;

class Person {
  String firstName;

  Person() : firstName = 'Sally' {
    print('in Person #${++numPeople}: $firstName');
  }
}

class Employee extends Person {
  String name;

  Employee() : name = 'Bob ${++numPeople}' {
    print('in Employee (Person #${++numPeople}): $firstName ($name)');
    firstName = 'Roberta';
    print('in Employee (Person #${numPeople}): $firstName ($name)');
  }
}

main() {
  new Employee();
}
