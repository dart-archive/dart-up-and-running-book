class Color {
  static const RED = const Color('red'); // A constant static variable.
  final String name;                     // An instance variable.
  const Color(this.name);                // A constant constructor.
}

main() {
  assert(Color.RED.name == 'red');
}
