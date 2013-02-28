import 'dart:crypto';
import 'dart:io';

main() {
  var file = new File('icon.ico');
  var bytes = file.readAsBytesSync();
  var base64 = CryptoUtils.bytesToBase64(bytes);
  assert(base64 ==
    'iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38G'
    'IAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==');
}
