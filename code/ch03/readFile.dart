import 'dart:io';
import 'dart:async';

main() {
  var config = new File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  inputStream
    .transform(new StringDecoder())
    .transform(new LineTransformer())
    .listen(
      (String line) { 
        print('Read ${line.length} bytes from stream');
      },
      onDone: () { print('file is now closed'); },
      onError: (e) { print(e.toString()); });
}
