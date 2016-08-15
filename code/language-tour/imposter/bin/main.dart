// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;
  
  // Not in the interface, since this is a constructor.
  Person(this._name);
  
  // In the interface.
  String greet(who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Imposter implements Person {
  // We have to define this, but we don't use it.
  final _name = "";
  
  String greet(who) => 'Hi $who. Do you know who I am?';
}

greetBob(Person person) => person.greet('bob');

main() {
  print(greetBob(new Person('kathy')));
  print(greetBob(new Imposter()));
}
