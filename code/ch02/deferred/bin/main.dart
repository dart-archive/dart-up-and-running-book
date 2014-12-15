import 'package:deferred/hello.dart' deferred as hello;

greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}

main() {
  hello.loadLibrary().then((_) {
    hello.printGreeting();
  });
  // OR...
  greet();
  greet();
  greet();
  greet();
  greet();
}
