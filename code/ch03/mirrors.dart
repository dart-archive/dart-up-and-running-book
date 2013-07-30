import 'dart:mirrors';

askUserForNameOfFunction() => 'foo';

class Person {
  String firstName;
  String lastName;
  int age;
  
  Person(this.firstName, this.lastName, this.age);

  String get fullName => '$firstName $lastName';

  void greet(String other) {
    print('Hello there, $other!');
  }
}

main() {
  // If the symbol name is known at compile time.
  const className = const Symbol('MyClass');

  // If the symbol name is dynamically determined.
  var userInput = askUserForNameOfFunction();
  var functionName = new Symbol(userInput);


  assert('MyClass' == MirrorSystem.getName(name));



  ClassMirror mirror = reflectClass(Person);

  assert('Person' == MirrorSystem.getName(mirror.simpleName));

  reflectFromInstance();

  showConstructors(mirror);

  showFields(mirror);

  reflectOnInstance();
}

reflectFromInstance() {
  var person = new Person('Bob', 'Smith', 33);
  ClassMirror mirror = reflectClass(person.runtimeType);
}

showConstructors(ClassMirror mirror) {
  Map<Symbol, MethodMirror> constructors = mirror.constructors;

  constructors.forEach((s, m) {
    print('The constructor $s has ${m.parameters.length} parameters.');
  });
}

showFields(ClassMirror mirror) {
  Map<Symbol, VariableMirror> fields = mirror.variables;

  fields.forEach((s, v) {
    var finalStatus = v.isFinal ? 'final' : 'not final';
    var privateStatus = v.isPrivate ? 'private' : 'not private';
    var typeAnnotation = v.type.simpleName;

    print('The field $s is $privateStatus and $finalStatus and is annotated '
          'as $typeAnnotation');
  });
}

reflectOnInstance() {
  var p = new Person('Bob', 'Smith', int);
  InstanceMirror mirror = reflect(p);

  var person = mirror.reflectee;
  assert(identical(p, person));
}