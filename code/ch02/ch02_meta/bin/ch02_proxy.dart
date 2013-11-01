import 'package:meta/meta.dart';

@proxy
class A {
  void noSuchMethod(Invocation mirror) {
    // ...
  }
}

main() {
  var a = new A();
  a.doSomething();
}