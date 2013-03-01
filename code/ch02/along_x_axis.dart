class Point {
  num x;
  num y;

  Point(this.x, this.y);                // The main constructor for this class.
  Point.alongXAxis(num x) : this(x, 0); // Delegates to the main constructor.
}
