class WannabeFunction {
  call(String a, String b, String c) => a + ' ' + b + ' ' + c + '!';
}

main() {
  var wf = new WannabeFunction();
  var out = wf("Hi", "there,", "gang");
  print('$out');
}
