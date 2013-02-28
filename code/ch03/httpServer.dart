import 'dart:io';

main() {
  dartHandler(HttpRequest request) {
    print('New request');
    request.response.addString('Dart is optionally typed');
    request.response.close();
  };

  HttpServer.bind('127.0.0.1', 8888).then((HttpServer server) {
    server.listen((request) { 
      print("got request");
      if (request.uri.path == '/languages/dart') {
        dartHandler(request);
      } else {
        request.response.addString('Not found');
        request.response.statusCode = HttpStatus.NOT_FOUND;
        request.response.close();
      }
    });
  });
}
