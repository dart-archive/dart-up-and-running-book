class Vector {
  final int x;
  final int y;
  const Vector(this.x, this.y);

  Vector operator +(Vector v) { // Overrides + (a + b).
    return new Vector(x + v.x, y + v.y);
  }

  Vector operator -(Vector v) { // Overrides - (a - b).
    return new Vector(x - v.x, y - v.y);
  }
}

main() {
  final v = new Vector(2,3);
  final w = new Vector(2,2);

  assert(v.x == 2 && v.y == 3);         // v   == (2,3)
  assert((v+w).x == 4 && (v+w).y == 5); // v+w == (4,5)
  assert((v-w).x == 0 && (v-w).y == 1); // v-w == (0,1)
}
