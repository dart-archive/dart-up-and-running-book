main() {
  // Map literals use strings as keys.
  var hawaiianBeaches = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };
  
  // Maps can be built from a constructor.
  var searchTerms = new Map();
  
  // Maps are parameterized types; you can specify what types
  // the key and value should be.
  var nobleGases = new Map<int, String>();
  
  // Maps from constructors can use any object as a key.
  // Integers and strings are common key types.
  nobleGases[54] = 'xenon';
  
  // Retrieve a value with a key.
  assert(nobleGases[54] == 'xenon');
  
  // Check whether a map contains a key.
  assert(nobleGases.containsKey(54));
  
  // Remove a key and its value.
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));
  
  // Get all the keys as an unordered collection (a list).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(new Set.from(keys).contains('oahu'));

  // Get all the values as an unordered collection (a list of lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.indexOf('waikiki') != -1));
  
  // NOTE: Do not depend on iteration order.
  hawaiianBeaches.forEach((k,v) {
    print('I want to visit $k and swim at $v');
    // I want to visit oahu and swim at [waikiki, kailua, waimanalo], etc.
  });
  
  assert(hawaiianBeaches.containsKey('oahu'));
  assert(!hawaiianBeaches.containsKey('florida'));
  
  var teamAssignments = {};
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);
  teamAssignments.forEach((k,v) {
    print('$k: $v');
  });
}

String pickToughestKid() => "Cosmo";