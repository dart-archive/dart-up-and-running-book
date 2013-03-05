import 'dart:io';
import 'dart:async';

main() {
  var dir = new Directory('/tmp');
  var contentsStream = dir.list(recursive:true);
  contentsStream.listen(
    (FileSystemEntity f) {
      if (f is File) {
        print('Found file ${f.path}');
      } else if (f is Directory) {
        print('Found dir ${f.path}');
      }
    },
    onError: (e) { print(e.toString()); }
  );
}