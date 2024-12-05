import 'package:flutter/material.dart';

enum EnMessagetype { text, img, voiceMsg }

class Message {
  final String msg;
  final String name;
  final String time;
  final Color color;
  final bool isFriendMsg;
  final EnMessagetype msgType;

  Message(
      {required this.msg,
      required this.name,
      required this.time,
      required this.color,
      required this.isFriendMsg,
      required this.msgType});
}
