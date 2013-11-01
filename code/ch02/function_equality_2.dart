foo() {}               // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {}        // An instance method
}

main() {
  var x;
  
  // Comparing top-level functions.
  x = foo;         // A reference to the top-level function
  assert(foo == x);
  
  // Comparing static methods.
  x = A.bar;       // A reference to the static method
  assert(A.bar == x);
  
  // Comparing instance methods.
  var v = new A(); // Instance #1 of A
  var w = new A(); // Instance #2 of A
  var y = w;       // A reference to instance #2
  x = w.baz;       // A reference to the instance method (for the instance #2)
  
  // These closures refer to the same instance (#2), so they're equal.
  assert(y.baz == x);
  
  // These closures refer to different instances, so they're unequal.
  assert(v.baz != w.baz);
}
