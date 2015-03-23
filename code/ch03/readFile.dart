import 'dart:io';
import 'dart:convert';
import 'dart:async';

main() async {
  var config = new File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  var lines = inputStream.transform(UTF8.decoder).transform(new LineSplitter());
  try {
    await for (var line in lines) {
      print('Got ${line.length} characters from stream');
    }
  } catch (e) {
    print('Recovered from error: $e');
    return;
  } 
  print('file is closed');
}
