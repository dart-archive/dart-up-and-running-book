main() {
  // BEGIN
  var s = 'some string';       // Create a String object.
  var splitClosure1 = s.split; // Get a reference to its split() method.
  var splitClosure2 = s.split; // Get another reference to its split() method.
  
  // Because each reference to the method creates a separate closure,
  // s.split != s.split, and splitClosure1 != splitClosure2.
  assert(s.split != s.split);
  assert(splitClosure1 != splitClosure2);
  // END

  // The key is using the same reference.
  // BEGIN
  splitClosure2 = splitClosure1;
  assert(splitClosure1 == splitClosure2);
  // END
  
  // An example of using the closure.
  var words = splitClosure1(' ');
  assert(words[0] == 'some');
}