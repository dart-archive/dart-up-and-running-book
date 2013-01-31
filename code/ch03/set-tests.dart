main() {
  getAndPutItems();
  checkForItems();
  intersectAndSubset();
}

getAndPutItems() {
  var ingredients = new Set();
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

  // Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

  // Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);
}

checkForItems() {
  var ingredients = new Set();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  // Check whether an item is in the set.
  assert(ingredients.contains('titanium'));

  // Check whether all the items are in the set.
  assert(ingredients.containsAll(['titanium', 'xenon']));
}

intersectAndSubset() {
  var ingredients = new Set();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  // Create the intersection of two sets.
  var nobleGases = new Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));

  // Check whether this set is a subset of another collection.
  // That is, does another collection contains all the items of this set?
  var allElements = ['hydrogen', 'helium', 'lithium', 'beryllium',
                     'gold', 'titanium', 'xenon' /* all the rest */];
  assert(ingredients.isSubsetOf(allElements));
}