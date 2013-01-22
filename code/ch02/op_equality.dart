main() {
  var a = 2;
  var b = 3;
  
  assert(a == 2);       // 2 and 2 are equal.
  assert(a != b);       // 2 and 3 aren't equal.
  assert(b > a);        // 3 is more than 2.
  assert(a < b);        // 2 is less then 3.
  assert(b >= b);       // 3 is greater than or equal to 3.
  assert(a <= b);       // 2 is less than or equal to 3.
  
  print("a = $a; b = $b");
}