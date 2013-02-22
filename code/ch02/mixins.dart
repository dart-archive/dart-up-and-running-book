abstract class Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;
  
  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

abstract class Aggressive {
  bool passive = false;
}

abstract class Demented {
  bool dangerous = false;
}

class Person {
  String name;
  Person.withName(this.name);
  Person();
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    //canConduct = true;
  }
}

main() {
  var director = new Maestro('Allen');
  director.entertainMe();
}


