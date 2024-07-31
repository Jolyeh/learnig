class Company{
  String? name;
  String? email;

  Company({
    required this.name,
    required this.email
  });

  @override
  String toString() {
    return 'Company{name: $name, email: $email}';
  }
}