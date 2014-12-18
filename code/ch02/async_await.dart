import 'dart:async';

const expectedVersion = '1.0.0';
const dev = true;

String lookUpVersionSync() => '1.0.0';
Future<String> lookUpVersionAsync() async => '1.0.0';

lookUpVersion() async {
  if (dev) return 'dev-' + await loadFromServer();
  return '1.0.0';
}

loadFromServer() async => '1.0.0';

checkVersion() async {
  var version = await lookUpVersion();
  if (version == expectedVersion) {
    print(expectedVersion);
  } else {
    print('Unexpected version: $version');
  }
}

main() async {
  checkVersion();
  print('In main: version is ${await lookUpVersion()}');
}
