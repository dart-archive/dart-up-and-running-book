main() {
  testStaticMethodClosure();
  testTopLevelFunctionClosure();
  testInstanceMethodClosure();
  testInnerFunctionClosure();
}

testStaticMethodClosure() {
  var closure1 = A.init;
  var closure2 = A.init;
  
  assert(A.init == A.init);
  assert(closure1 == closure2);
}

class A {
  static init() {
    // ...
  }
}

testTopLevelFunctionClosure() {
  var closure1 = doSomething;
  var closure2 = doSomething;
  
  assert(doSomething == doSomething);
  assert(closure1 == closure2);
}

void doSomething() {
  //...
}

testInstanceMethodClosure() {
  // BEGIN
  var s = 'some string';       // Create a String object.
  var splitClosure1 = s.split; // Get a reference to its split() method.
  var splitClosure2 = s.split; // Get another reference to its split() method.
  
  // s.split == s.split, and splitClosure1 == splitClosure2.
  assert(s.split == s.split);
  assert(splitClosure1 == splitClosure2);
  // END

  // You used to have to use the same reference.
  // BEGIN
  splitClosure2 = splitClosure1;
  assert(splitClosure1 == splitClosure2);
  // END
  
  // An example of using the closure.
  var words = splitClosure1(' ');
  assert(words[0] == 'some');
}

testInnerFunctionClosure() {
  Function adder(num n) {    // Lexically scoped function...
    return (num i) => n + i; // returns a function.
  }

  var addByTwo = adder(2); // addByTwo closes over adder function.
  var addTwo = adder(2);   // So does addTwo.
  
  assert(adder == adder);
  assert(addByTwo != addTwo);
}