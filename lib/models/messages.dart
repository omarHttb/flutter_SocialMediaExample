import 'package:flutter_sep/models/message.dart';

class Messages extends Message {
  String senderName = "";
  String reciverName = "";
  String? image = "";
  String? record = "";

  Messages(
      {required this.senderName,
      required this.reciverName,
      this.record,
      this.image,
      required super.msgType,
      required super.msg,
      required super.name,
      required super.time,
      required super.color,
      required super.isFriendMsg});
}
