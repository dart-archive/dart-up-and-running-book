/// Returns a function that adds [n] to the function's argument.
Function makeAdder(num n) {
  return (num i) => n + i;
}

main() {
  var add2 = makeAdder(2); // Create a function that adds 2.
  var add4 = makeAdder(4); // Create a function that adds 4.

  assert(add2(3) == 5);
  assert(add4(3) == 7);
  
  print(add2(3)); // 5
  print(add4(3)); // 7
}

