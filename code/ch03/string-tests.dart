main() {
  //BEGIN
  // Check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));

  // Does a string start with another string?
  assert('Never odd or even'.startsWith('Never'));

  // Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);
  //END

  //BEGIN
  // Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd');

  // Split a string using a string pattern.
  var parts = 'structured web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'structured');

  // Get the character (as a string) by index.
  assert('Never odd or even'[0] == 'N');

  // Use splitChars() to get a list of all characters (as Strings);
  // good for iterating.
  for (var char in 'hello'.splitChars()) {
    print(char);
  }

  // Get the char code at an index.
  assert('Never odd or even'.charCodeAt(0) == 78);

  // Get all the char codes as a list of integers.
  var charCodes = 'Never odd or even'.charCodes;
  assert(charCodes.length == 17);
  assert(charCodes[0] == 78);
  //END

  //BEGIN
  // Convert to uppercase.
  assert('structured web apps'.toUpperCase() == 'STRUCTURED WEB APPS');

  // Convert to lowercase.
  assert('STRUCTURED WEB APPS'.toLowerCase() == 'structured web apps');
  //END

  //BEGIN
  // Trim a string.
  assert('  hello  '.trim() == 'hello');

  // Check whether a string is empty.
  assert(''.isEmpty);

  // Strings with only white space are not empty.
  assert(!'  '.isEmpty);
  //END

  //BEGIN
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(new RegExp('NAME'), 'Bob');

  assert(greeting != greetingTemplate); // greetingTemplate didn't change.
  //END
  
  buildingAString();
  regularExpressions();
  regularExpressions2();
}

buildingAString() {
  //NOTE: DID NOT USE A METHOD CASCADE. BROKE due to add return type changing.
  //BEGIN
  var sb = new StringBuffer();
  sb..add('Use a StringBuffer ')
  ..addAll(['for ', 'efficient ', 'string ', 'creation '])
  ..add('if you are ')
  ..add('building lots of strings.');

  var fullString = sb.toString();
  
  assert(fullString ==
      'Use a StringBuffer for efficient string creation '
      'if you are building lots of strings.');
  
  sb.clear();  // All gone!
  assert(sb.toString() == '');
  //END
}

regularExpressions() {
  // A regular expression for one or more digits
  var numbers = new RegExp(r'\d+');
  //NOTE: WAS: var numbers = const RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // Contains() can use a regular expression.
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

  // Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');
}

regularExpressions2() {
  var numbers = new RegExp(r'\d+');
  //NOTE: WAS: var numbers = const RegExp(r'\d+');
  var someDigits = 'llamas live 15 to 20 years';

  // Check whether the reg exp has a match in a string.
  assert(numbers.hasMatch(someDigits));

  // Loop through all matches.
  for (var match in numbers.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }

}
