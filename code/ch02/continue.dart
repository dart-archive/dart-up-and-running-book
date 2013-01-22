class Candidate {
  Candidate(String this.name, num this.yearsExperience);

  String name;
  num yearsExperience;
  void interview() => print("interviewed $name");
}

var candidates = new List();

main() {
  candidates.add(new Candidate("Pam", 10));
  candidates.add(new Candidate("Bob", 4));
  
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }
}

