// BEGIN(factory_constructor) 
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};
  
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
  
  Logger._internal(this.name);
  
  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}
// END(factory_constructor)

main() {
  //BEGIN
  var logger = new Logger('UI');
  logger.log('Button clicked');
  //END
  
  var l1 = new Logger('log1');
  var l1_2 = new Logger('log1');
  var l2 = new Logger('log2');
  
  assert(identical(l1, l1_2));
  assert(l1 != l2);
  
  l1.log('${l1.name}: This is l1.');
  l1_2.log('${l1_2.name}: This is l1_2.');
  l2.log('${l2.name}: This is l2.');
}
