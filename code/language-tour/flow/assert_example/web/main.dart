void main() {
  var text = 'Hi';
  var number = 99;
  var urlString = 'https://github.com/';

  // Make sure the variable has a non-null value.
  assert(text != null);

  // Make sure the value is less than 100.
  assert(number < 100);

  // Make sure this is an https URL.
  assert(urlString.startsWith('https'));

  print('About to call assert(false).');
  assert(false);
  print('Oops, you weren\'t running in checked mode.');
}
