typedef int Compare(Object a, Object b);

int sort(int a, int b) => a - b;

main() {
  assert(sort is Compare); // True!
}
