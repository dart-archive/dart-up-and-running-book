main() {
  buildMaps();
  addGetSetItems();
  getMapValues();
  iterateThroughPairs();
  checkForKey();
  callPutIfAbsent();
}

buildMaps() {
  // Maps often use strings or integers as keys.
  var hawaiianBeaches = {
    'oahu'       : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai'      : ['hanalei', 'poipu']
  };
  
  // Maps can be built from a constructor.
  var searchTerms = new Map();
  
  // Maps are parameterized types; you can specify what types
  // the key and value should be.
  var nobleGases = new Map<int, String>();
}

addGetSetItems() {
  var nobleGases = { 54: 'xenon' };
  
  // Retrieve a value with a key.
  assert(nobleGases[54] == 'xenon');
  
  // Check whether a map contains a key.
  assert(nobleGases.containsKey(54));
  
  // Remove a key and its value.
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));
}

getMapValues() {
  var hawaiianBeaches = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };
  
  // Get all the keys as an unordered collection (an Iterable).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(new Set.from(keys).contains('oahu'));

  // Get all the values as an unordered collection (an Iterable of Lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('waikiki')));
}
  
iterateThroughPairs() {
  var hawaiianBeaches = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };
  
  // NOTE: Do not depend on iteration order.
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
    // I want to visit oahu and swim at [waikiki, kailua, waimanalo], etc.
  });
}

checkForKey() {  
  var hawaiianBeaches = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };
  
  assert(hawaiianBeaches.containsKey('oahu'));
  assert(!hawaiianBeaches.containsKey('florida'));
}

callPutIfAbsent() {  
  var teamAssignments = {};
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);
  teamAssignments.forEach((k, v) {
    print('$k: $v');
  });  
}

String pickToughestKid() => "Cosmo";
