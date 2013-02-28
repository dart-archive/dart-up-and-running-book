import 'dart:io';

main() {
  var config = new File('config.txt');

  config.readAsBytes().then((List<int> contents) {
    print('The entire file is ${contents.length} bytes long');
  });
}
