import 'dart:async';

const expectedVersion = '1.0.0';

String lookUpVersionSync() => '1.0.0';
Future<String> lookUpVersion() async => '1.0.0';

checkVersion() async {
  if (await lookUpVersion() == expectedVersion) {
    print(expectedVersion);
  } else {
    print('unexpected version');
  }
}

main() async {
  checkVersion();
  print('In main: version is ${await lookUpVersion()}');
}