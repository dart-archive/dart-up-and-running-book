import 'dart:html';
import 'dart:async';
import 'dart:convert' show JSON;

// A JSON-formatted file in the same location as this page.
var jsonUri = 'data.json';
// Besides 'data.json', also try 'nodata.json' and 'nofile.json'.

// An XML-formatted file in the same location as this page.
var xmlUri = 'data.xml';
// Besides 'data.xml', also try 'nodata.xml' and 'nofile.xml'.

main() {
  // Read a JSON file.
  HttpRequest.getString(jsonUri)
      .then(processString)
      .catchError(handleError);
  
  // Read an XML file.
  HttpRequest.request(xmlUri)
      .then(processRequest)
      .catchError(handleError);
}

processString(String jsonText) {
  parseText(jsonText);
}

processRequest(HttpRequest request) {
  var xmlDoc = request.responseXml;
  try {
    var license = xmlDoc.querySelector('license').text;
    print('License: $license');
  } catch(e) {
    print('$xmlUri doesn\'t have correct XML formatting.');
  }
}

parseText(String jsonText) {
  var response;
  
  try {
    response = JSON.decode(jsonText);
  } on FormatException catch(e) {
    print('$jsonUri doesn\'t have correct JSON formatting.');
    print(e.message);
    return;
  }

  String name = response['name'];
  String license = response['license'];
  print('The $name project uses the $license license.');
}

// PENDING: We should do more explicit error handling, once it's available. 
handleError(error) {
  print('Uh oh, there was an error.');
  print(error.toString());
}

