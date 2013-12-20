import 'dart:html';

var url = '/ch03/ch03_4_async/web/humans.txt';

void main() {
  printRobots();
  printRobotsAndHandleErrors();
  querySelector("#button1").onClick.listen(handleClick);
}

void handleClick(MouseEvent event) {
  print('click!');
}

void printRobots() {
  HttpRequest.getString(url)
    .then((String result) {
      print(result);
    });
    // Should handle errors here
}

void printRobotsAndHandleErrors() {
  HttpRequest.getString(url)
    .then((String result) {
      print(result);
    })
    .catchError((e) {
      print('Oops, couldn\'t get humans.txt:');
      print(e);
    });
}