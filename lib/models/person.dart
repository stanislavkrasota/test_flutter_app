class Person {
  final String id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  Person.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      username = json['username'],
      email = json['email'],
      phone = json['phone'],
      website = json['website'];
}

