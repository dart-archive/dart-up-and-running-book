import 'dart:html';

var url = 'humans.txt';

void main() {
  printRobots();
  printRobotsAndHandleErrors();
  querySelector("#button1").onClick.listen(handleClick);
}

void handleClick(MouseEvent event) {
  print('click!');
}

printRobots() async {
  var result = await HttpRequest.getString(url);
  print(result);
  // Should handle errors here.
}

printRobotsAndHandleErrors() async {
  try {
    var result = await HttpRequest.getString(url);
    print(result);
  } catch (e) {
    // Handle or ignore the error.
    print('Oops, couldn\'t get $url: $e');
  }
}
