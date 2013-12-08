@proxy
class A {
  void noSuchMethod(Invocation mirror) {
    print('handling invocation: ${mirror.memberName}');
  }
}

main() {
  var a = new A();
  a.doSomething();
}