import 'dart:uri';

main() {
  var uri = new Uri('http://example.org:8080/foo/bar#frag');

  assert(uri.scheme == 'http');
  assert(uri.domain == 'example.org');
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'http://example.org:8080');
}
