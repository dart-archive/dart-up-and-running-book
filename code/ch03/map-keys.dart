class Person {
  String firstName, lastName;

  Person(this.firstName, this.lastName);

  // Override hashCode using strategy from Effective Java, Chapter 11.
  int get hashCode {
    int result = 17;
    result = 37 * result + firstName.hashCode;
    result = 37 * result + lastName.hashCode;
    return result;
  }

  // Always implement operator== if you override hashCode.
  bool operator==(other) {
    if (identical(other, this)) return true;
    return (other.firstName == firstName && other.lastName == lastName);
  }
}

main() {
  var p1 = new Person('bob', 'smith');
  var p2 = new Person('bob', 'smith');
  assert(p1.hashCode == p2.hashCode);
}