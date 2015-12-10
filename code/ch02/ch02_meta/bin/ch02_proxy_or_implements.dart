class SomeClass {
  doSomething() {
    print('Do something.');
  }
}

class SomeOtherClass {
  doSomethingElse() {
    print('Do something else.');
  }
}

class A implements SomeClass, SomeOtherClass {
  void noSuchMethod(Invocation mirror) {
    print('A handling invocation: ${mirror.memberName}');
  }
}

@proxy
class B {
  void noSuchMethod(Invocation mirror) {
    print('B handling invocation: ${mirror.memberName}');
  }
}

main() {
  SomeClass aTypedVar = new SomeClass();
  aTypedVar.doSomething();

  aTypedVar = new A();
  aTypedVar.doSomething();

  try {
    aTypedVar = new B(); // Fails in checked mode.
    aTypedVar.doSomething();
  } on TypeError {
    print('Assigning a B to aTypedVar failed.');
  }

  var anUntypedVar = new B();
  anUntypedVar.doSomething();
}
