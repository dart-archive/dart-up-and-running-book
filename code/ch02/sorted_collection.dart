class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

typedef int Compare(int a, int b);

int sort(int a, int b) => a - b;

main() {
  SortedCollection coll = new SortedCollection(sort);
  assert(coll.compare is Function);
  assert(sort is Compare); // True!
}
