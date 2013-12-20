import 'dart:io';

main() {
  dartHandler(HttpRequest request) {
    request.response.headers.contentType = new ContentType('text', 'plain');
    request.response.write('Dart is optionally typed');
    request.response.close();
  };

  HttpServer.bind('127.0.0.1', 8888).then((HttpServer server) {
    server.listen((request) { 
      print('Got request for ${request.uri.path}');
      if (request.uri.path == '/languages/dart') {
        dartHandler(request);
      } else {
        request.response.write('Not found');
        request.response.close();
      }
    });
  });
}
