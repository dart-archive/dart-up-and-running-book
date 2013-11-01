class Person {
  Map data;
  Person.fromJson(Map this.data) {}
}

class Employee extends Person {
  static Map findDefaultData() => {'employeeData':'none'};

  Employee.fromJson(Map data) : super.fromJson(data);
  Employee() : super.fromJson(findDefaultData());
}

main() {
  var emp = new Employee.fromJson({});
  print(emp.data);         // {}
  
  emp = new Employee();    // {employeeData: none}
  print(emp.data);
}