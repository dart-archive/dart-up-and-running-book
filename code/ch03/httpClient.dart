import 'dart:io';
import 'dart:uri';

main() {
  var url = new Uri('http://127.0.0.1:8888/languages/dart');
  var httpClient = new HttpClient();
  httpClient.getUrl(url)
    .then((HttpClientRequest request) {
      print('have request');
      return request.close();
    })
    .then((HttpClientResponse response) {
      print('have response');
      response.transform(new StringDecoder()).toList().then((data) {
        var body = data.join('');
        print(body);
        httpClient.close();
      });
    });
}
