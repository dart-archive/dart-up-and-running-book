class Candidate {
  interview () { }
}

main() {
  List<Candidate> candidates = [ new Candidate(), new Candidate(), new Candidate() ];
  for (int i = 0; i < candidates.length; i++) {
    candidates[i].interview();
  }

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  candidates.forEach((candidate) => candidate.interview());

  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x);
  }
}
