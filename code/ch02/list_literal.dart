// BEGIN(list_literal)
var list = [1, 2, 3];
// END(list_literal)

main() {
  // BEGIN(list_const_literal)
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // Uncommenting this causes an error.
  // END(list_const_literal)

  list[1] = 1; // You can do this.
  try {
    constantList[1] = 1; // You can't do this.
  } catch (e) {
    print('Tsk tsk! $e');
  }
}
