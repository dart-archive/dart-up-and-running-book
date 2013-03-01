main() {
  var text = 'Hi';
  var number = 99;
  var urlString = 'https://github.com/';

  assert(text != null);  // Make sure the variable has a non-null value.
  assert(number < 100);  // Make sure the value is less than 100.
  assert(urlString.startsWith('https')); // Make sure this is an HTTPS URL.
}
