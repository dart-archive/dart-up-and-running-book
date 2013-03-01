// A person. The implicit interface contains greet().
class Person {
  final _name;          // In the interface, but visible only in this library,
  Person(this._name);   // Not in the interface, since this is a constructor.
  String greet(who) => 'Hello, $who. I am $_name.'; // In the interface.
}

// An implementation of the Person interface.
class Imposter implements Person {
  final _name = "";      // We have to define this, but we don't use it.
  String greet(who) => 'Hi $who. Do you know who I am?';
}

greetBob(Person person) => person.greet('bob');

main() {
  print(greetBob(new Person('kathy')));
  print(greetBob(new Imposter()));
}
