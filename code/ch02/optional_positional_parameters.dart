String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

main() {
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  print(say('Bob', 'Howdy'));
  assert(say('Bob', 'Howdy', 'smoke signal') ==
  'Bob says Howdy with a smoke signal');
  print(say('Bob', 'Howdy', 'smoke signal'));
}