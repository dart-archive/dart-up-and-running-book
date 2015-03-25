import 'package:deferred/hello.dart' deferred as hello;

greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}

main() async {
  await hello.loadLibrary();
  hello.printGreeting();
  // OR...
  greet();
  greet();
  greet();
  greet();
  greet();
}
