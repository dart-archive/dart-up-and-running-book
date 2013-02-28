import 'dart:io';

main() {
  var config = new File('config.txt');
  config.readAsString().then((String contents) {
    print(contents);
  }).catchError((e) {
    print(e);
  });
}
