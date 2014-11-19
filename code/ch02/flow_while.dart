doSomething() {}
printLine() => print('Hi');
bool isDone() => true;
bool atEndOfPage() => true;

main() {
  while (!isDone()) {
    doSomething();
  }

  do {
    printLine();
  } while (!atEndOfPage());
}
