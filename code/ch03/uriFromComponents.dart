import 'dart:uri';

main() {
  var uri = new Uri.fromComponents(scheme: 'http', domain: 'example.org', 
                     path: '/foo/bar', fragment: 'frag');
  assert(uri.toString() == 'http://example.org/foo/bar#frag');
}
