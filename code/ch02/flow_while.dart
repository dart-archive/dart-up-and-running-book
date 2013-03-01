doSomething() { }
printLine() { print('Hi'); }
bool isDone() { return true; }
bool atEndOfPage() { return true; }

main() {
  while(!isDone()) {
    doSomething();
  }

  do {
    printLine();
  } while (!atEndOfPage());
}
