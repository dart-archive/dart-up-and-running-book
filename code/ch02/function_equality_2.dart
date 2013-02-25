foo() {}

class SomeClass {
  static void bar() {}
}

main() {
  // You can compare top-level functions and static methods by name.
  assert(foo == foo);
  assert(SomeClass.bar == SomeClass.bar);
}