doFor() {
  //BEGIN
  var message = new StringBuffer("Dart is fun");
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  //END
  print(message);
}

doClosures() {
  print('do closures right: 0 1');
  
  //BEGIN
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  //END
}

doCollection() {
  print('do collection');
  
  //BEGIN
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }
  //END
}

class Candidate {
  interview () { }
}

doForIn() {
  List<Candidate> candidates = [ new Candidate(), new Candidate(), new Candidate() ];

  //BEGIN
  candidates.forEach((candidate) => candidate.interview());
  //END
}

main() {
  doFor();
  doClosures();
  doCollection();
  doForIn();
}