// XXX: Dart Editor thinks this is OK, but I haven't run it.

import 'dart:html';

String encodeMap(Map data) {
  return data.keys.map((k) {
    return '${Uri.encodeComponent(k)}=${Uri.encodeComponent(data[k])}';
  }).join('&');
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
  httpRequest.onLoadEnd.listen((e) => loadEnd(httpRequest));
  httpRequest.send(encodedData);
}