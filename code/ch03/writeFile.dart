import 'dart:io';

overwriteFile() {
  var logFile = new File('log.txt');
  var sink = logFile.openWrite();
  sink.write('FILE ACCESSED ${new DateTime.now()}\n');
  sink.close();
}

appendToFile() {
  var logFile = new File('betterLog.txt');
  var sink = logFile.openWrite(mode: FileMode.APPEND);
  sink.write('FILE ACCESSED ${new DateTime.now()}\n');
  sink.close();
}

writeBinary() {
  var binaryFile = new File('copyOfIcon.ico');
  var sink = binaryFile.openWrite();
  var icoFile = new File('icon.ico');
  var data = icoFile.openSync().readSync(icoFile.lengthSync());
  sink.add(data);
  sink.close();
}

main() {
  overwriteFile();
  appendToFile();
  writeBinary();
}
