import 'dart:io';
import 'dart:convert';
import 'dart:async';

main() {
  var config = new File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  inputStream
    .transform(UTF8.decoder)
    .transform(new LineSplitter())
    .listen(
      (String line) { 
        print('Got ${line.length} characters from stream');
      },
      onDone: () { print('file is now closed'); },
      onError: (e) { print(e.toString()); });
}
