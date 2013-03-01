main() {
  var a = 2;
  var b = 3;

  assert(a + b == 5);
  assert(a - b == -1);
  assert(a * b == 6);
  assert( a / b > 0.6 && a / b < 0.7);
  assert(a ~/ b == 0);  // Quotient
  assert(a % b == 2);   // Remainder
}
