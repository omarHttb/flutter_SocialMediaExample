import 'package:flutter_sep/models/person.dart';

class Friendrequest extends Person {
  bool isAccepted;
  bool isRejected;
  Friendrequest(
      {required super.name,
      required super.image,
      required super.lastMessage,
      required super.email,
      required this.isAccepted,
      required this.isRejected});
}
