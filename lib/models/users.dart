import 'package:flutter_sep/models/person.dart';

class User extends Person {
  bool isFreind = false;
  bool sendRequest = false;

  User(
      {required this.isFreind,
      required super.email,
      required this.sendRequest,
      required super.name,
      required super.image,
      required super.lastMessage});
}
