class Person {
  final int id;
  final String name;
  final String email;

  Person({required this.id, required this.name, required this.email});

  // redirecting constructor
  Person.fromId(int id, String name, String email)
    : this.id = id,
      this.name = name,
      this.email = email;

  // named constructor
  Person.fromJson(Map<String, dynamic> json)
    : this.id = json['id'],
      this.name = json['name'],
      this.email = json['email'];

  // factory constructor
  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(id: map['id'], name: map['name'], email: map['email']);
  }

  // named factory constructor
  factory Person.fromIdAndName(int id, String name) {
    return Person(id: id, name: name, email: "j@j.com");
  }
}

main() {
  Person person = Person(id: 1, name: "John", email: "j@j.com");
  print(person.id);
  print(person.name);
  print(person.email);
}
