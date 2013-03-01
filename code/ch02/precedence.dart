main() {
  var n = 4;
  var d = 2;
  var i = 2;
  if ((n % i == 0) && (d % i == 0)) // Parens improve readability.
  {}
  if (n % i == 0 && d % i == 0)     // Harder to read, but equivalent.
  {}
}
