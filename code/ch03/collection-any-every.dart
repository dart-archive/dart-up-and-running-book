main() {
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  
  // Chamomile is not caffeinated.
  isDecaffeinated(String teaName) => teaName == 'chamomile';
  
  // Use where() to find only the items that return true
  // from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea)).toList();
  // or teas.where(isDecaffeinated)
  
  // Use any() to check whether at least one item in the collection
  // satisfies a condition.
  assert(teas.any(isDecaffeinated));
  
  // Use every() to check whether all the items in a collection
  // satisfy a condition.
  assert(!teas.every(isDecaffeinated));
  
  decaffeinatedTeas.forEach(print);
}