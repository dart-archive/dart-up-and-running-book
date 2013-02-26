foo() {}

class SomeClass {
  static void bar() {}
}

main() {
  assert(foo == foo);
  assert(SomeClass.bar == SomeClass.bar);
}