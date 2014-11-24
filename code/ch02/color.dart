class Color {
  static const red = const Color('red'); // A constant static variable.
  final String name;                     // An instance variable.
  const Color(this.name);                // A constant constructor.
}

main() {
  assert(Color.red.name == 'red');
}
