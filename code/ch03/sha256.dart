import 'dart:crypto';

main() {
  var sha256 = new SHA256();
  sha256.add('message'.charCodes);
  var hexString = CryptoUtils.bytesToHex(sha256.close());
  assert(hexString ==
      'ab530a13e45914982b79f9b7e3fba994cfd1f3fb22f71cea1afbf02b460c6d1d');
}
