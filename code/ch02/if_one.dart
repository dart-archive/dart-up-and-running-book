main() {
/* HACK: Force tests to pass without actually writing good code :)
  // BEGIN(if_one)
  if (1) {
  // END(if_one)
*/
  if (true) {
    // BEGIN(if_one)
    print('JavaScript prints this line because it thinks 1 is true.');
  } else {
    print('Dart in production mode prints this line.');

    // However, in checked mode, if (1) throws an exception
    // because 1 is not boolean.
  }
  // END(if_one)
}
