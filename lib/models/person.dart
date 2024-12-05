class Person {
  String name;
  String lastMessage;
  String image;
  String? email;

  Person(
      {required this.name,
      required this.image,
      required this.lastMessage,
      this.email});
}
