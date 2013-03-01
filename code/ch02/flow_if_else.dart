class Person {
  bringRainCoat() { }
  wearJacket() { }
}

class Vehicle {
  putTopDown() { }
}

bool isRaining() {
  return false;
}

bool isSnowing() {
  return false;
}

main() {
  var you = new Person();
  var car = new Vehicle();

  if (isRaining()) {
    you.bringRainCoat();
  } else if (isSnowing()) {
    you.wearJacket();
  } else {
    car.putTopDown();
  }
}
