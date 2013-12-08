class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated      // Metadata; makes Dart Editor warn about using activate().
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {
    print('on!');
  }
} 

main() {
  var tv = new Television();
  tv.activate();
  tv.turnOn();
}