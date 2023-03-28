final List<String> students =
    List.generate(100, (index) => "Name ${index + 1}");
final List<Student> StudentInformation = [
  Student(name: "Emon", id: 15-25-23, phoneNumber: "01723315828", address: "Dhanmondi", department: "CSE"),
  Student(name: "mon", id: 15-25-23, phoneNumber: "01716048324", address: "kolabagan", department: "BBA"),
  Student(name: "Emon", id: 15-25-23, phoneNumber: "01723315828", address: "Dhanmondi", department: "cse"),
  Student(name: "nadi", id: 15-25-23, phoneNumber: "01723315828", address: "Dhanmondi", department: "EEE"),
  Student(name: "Sarlar", id: 15-25-23, phoneNumber: "01723315828", address: "Dhanmondi", department: "cse"),
];

class Student {
  String name;
  int id;
  String phoneNumber;
  String address;
  String department;

  Student(
      {required this.name,
      required this.id,
      required this.phoneNumber,
      required this.address,
      required this.department});

}

