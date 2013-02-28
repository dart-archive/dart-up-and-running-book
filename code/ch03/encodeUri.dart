import 'dart:uri';

main() {
  var uri = 'http://example.org/api?foo=some message';
  var encoded = encodeUri(uri);
  assert(encoded == 'http://example.org/api?foo=some%20message');

  var decoded = decodeUri(encoded);
  assert(uri == decoded);
}
