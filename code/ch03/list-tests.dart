main() {
  createLists();
  findItem();
  sortList();
  useTypes();
}

useTypes() {
  // This list should contain only strings.
  var fruits = new List<String>();
  
  fruits.add('apples');
  var fruit = fruits[0];
  assert(fruit is String);
  
  try {
    // Generates static analysis warning, num is not a string.
//    fruits.add(5);  // BAD: Throws exception in checked mode.
  } on Error catch(e) {
    print('Caught exception, as expected in checked mode.');
    print('  $e');
  };
}

sortList() {
  var fruits = ['bananas', 'apples', 'oranges'];

  // Sort a list.
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');
}

findItem() {
  var fruits = ['apples', 'oranges'];

  // Access a list item by index.
  assert(fruits[0] == 'apples');

  // Find an item in a list.
  assert(fruits.indexOf('apples') == 0);
}

createLists() {
  // Use a List constructor.
  var vegetables = new List();
  
  // Or simply use a list literal.
  var fruits = ['apples', 'oranges'];
  
  // Add to a list.
  fruits.add('kiwis');
  
  // Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);
  
  // Get the list length.
  assert(fruits.length == 5);
  
  // Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);
  
  // Remove all elements from a list.
  fruits.clear();
  assert(fruits.length == 0);
}
