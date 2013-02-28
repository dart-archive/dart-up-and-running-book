import 'dart:io';

main() {
  var logFile = new File('log.txt');
  var sink = logFile.openWrite(FileMode.WRITE);
  sink.addString('FILE ACCESSED ${new DateTime.now()}');
  sink.close();
}
