import 'dart:crypto';
main() {
  var hmac = new HMAC(new SHA256(), 'secretkey'.charCodes);
  hmac.add('message'.charCodes);
  var hmacHex = CryptoUtils.bytesToHex(hmac.close());
  assert(hmacHex ==
      '5c3e2f56de9411068f675ef32ffa12735210b9cbfee2ba521367a3955334a343');
}
