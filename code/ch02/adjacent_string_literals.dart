main() {
  // BEGIN(adjacent_string_literals) 
  var s = 'String ''concatenation'
          " works even over line breaks.";
  assert(s == 'String concatenation works even over line breaks.');
  // END(adjacent_string_literals)
}