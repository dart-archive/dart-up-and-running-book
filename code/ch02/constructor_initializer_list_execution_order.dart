// This code shows that when a constructor doesn't explicitly call its
// superclass's constructor, the superclass's no-argument
// constructor is called. Here's the order:
//
// 1. initializer list executes
// 2. superclass's no-arg constructor is called
// 3. main class's no-arg constructor is called
//
// This example doesn't make a lot of sense, but it's not used
// publicly - it's a proof of concept.
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
