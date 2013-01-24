// XXX: Dart Editor thinks this is OK, but I haven't run it.

import 'dart:html';
import 'dart:json';
import 'dart:uri';

String encodeMap(Map data) {
  return Strings.join(data.keys.mappedBy((k) {
    return '${encodeUriComponent(k)}=${encodeUriComponent(data[k])}';
  }), '&');
}

loadEnd(HttpRequest request) {
  if (request.status != 200) {
    print('Uh oh, there was an error of ${request.status}');
    return;
  } else {
    print('Data has been posted');
  }
}

main() {
  var dataUrl = '/registrations/create';
  var data = {'dart': 'fun', 'editor': 'productive'};
  var encodedData = encodeMap(data);

  var httpRequest = new HttpRequest();
  httpRequest.open('POST', dataUrl);
  httpRequest.setRequestHeader('Content-type', 
                               'application/x-www-form-urlencoded');
  httpRequest.on.loadEnd.add((e) => loadEnd(httpRequest));
  httpRequest.send(encodedData);
}