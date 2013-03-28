import 'dart:io';

main() {
  var config = new File('config.txt');

  // Put the whole file in a single string.
  config.readAsString().then((String contents) {
    print('The entire file is ${contents.length} characters long');
  });

  // Put each line of the file into its own string.
  config.readAsLines().then((List<String> lines) {
    print('The entire file is ${lines.length} lines long');
  });
}
