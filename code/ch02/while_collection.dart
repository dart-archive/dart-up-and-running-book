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
  candidates.add(new Candidate("Alice", 40));
  
//  candidates.where((c) => c.yearsExperience >= 5)
//  .forEach((c) => c.interview());

  candidates.where((c) => c.yearsExperience >= 5)
  .forEach((c) => c.interview());
  
//  for (var cand in candidates.where((c) => c.yearsExperience >= 5)) {
//    cand.interview();
//  }
}



