enum Color {
  red,
  green,
  blue
}

main() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);
  assert(Color.blue.toString() == 'Color.blue');
  
  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);
  
  // NOTE: aColor must be explicitly typed for the switch case to check for coverage.
  Color aColor = Color.blue;
  
  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor);  // 'Color.blue'
  }
}
