//import 'dart:mirrors';
// BEGIN
import 'todo.dart';

@todo('seth', 'make this do something')
void doSomething() {
  print('do something');
}
// END

main() {
  // PENDING: Once reflection on annotations is implemented, show that here.
  print('tbd');
}