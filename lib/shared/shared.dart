import 'package:flutter/material.dart';
import 'package:flutter_sep/models/friendRequest.dart';
import 'package:flutter_sep/models/message.dart';
import 'package:flutter_sep/models/messages.dart';
import 'package:flutter_sep/models/person.dart';
import 'package:flutter_sep/models/users.dart';

List<Map> usersData = [
  {
    'age': "1",
    'id': "1",
    'userName': "1",
    "email": "email1@email.com",
    'password': "Password@123"
  },
  {
    'age': "2",
    'id': "2",
    'userName': "2",
    "email": "email2@email.com",
    'password': "Password@123"
  },
  {
    'age': "3",
    'id': "3",
    'userName': "3",
    "email": "email3@email.com",
    'password': "Password@123"
  },
];
List<Person> freinds = [
  Person(
      name: "Ahmad",
      image: "assets/images/image.jpg",
      lastMessage:
          "message.msgmessage.msg message.msg message.msg message.msgmessage.msg message.msgmessage.msg message.msg message.msg message.msgmessage.msg message.msgmessage.msg message.msg message.msg message.msgmessage.msg message.msgmessage.msg message.msg message.msg message.msgmessage.msg message.msgmessage.msg message.msg message.msg message.msgmessage.msg"),
  Person(
      name: "Omar", image: "assets/images/image.jpg", lastMessage: "9:00 AM"),
  Person(name: "Khaled", image: "assets/images/image.jpg", lastMessage: "Hi!"),
  Person(
      name: "Abeer",
      image: "assets/images/image.jpg",
      lastMessage: "Hello Hello"),
];

List<Messages> messages = [
  Messages(
      msg: "want to play a game?",
      senderName: "ahmad",
      reciverName: "omar",
      time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
      msgType: EnMessagetype.text,
      image: "",
      color: Colors.blue,
      isFriendMsg: true,
      name: ''),
  Messages(
      msg: "yeah for sure",
      senderName: "omar",
      reciverName: "ahmad",
      time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
      msgType: EnMessagetype.text,
      image: "",
      color: Colors.green,
      isFriendMsg: false,
      name: ''),
  Messages(
      msg: "when",
      senderName: "omar",
      reciverName: "ahmad",
      time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
      msgType: EnMessagetype.text,
      image: "",
      color: Colors.green,
      isFriendMsg: false,
      name: ''),
  Messages(
      msg: "after 20 min from now",
      senderName: "ahmad",
      reciverName: "omar",
      time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
      msgType: EnMessagetype.text,
      image: "",
      color: Colors.blue,
      isFriendMsg: true,
      name: '')
];

String locale = 'en';
Map userData = {};

List<User> allUsers = [
  User(
      isFreind: false,
      email: "bla@m.com",
      sendRequest: false,
      name: "khaled",
      image: ("/assets/images/image.jpg"),
      lastMessage: ""),
  User(
      isFreind: false,
      email: "mojahed@m.com",
      sendRequest: true,
      name: "mojahed",
      image: ("/assets/images/image.jpg"),
      lastMessage: ""),
  User(
      isFreind: false,
      email: "ammer@m.com",
      sendRequest: false,
      name: "amer",
      image: ("/assets/images/image.jpg"),
      lastMessage: "")
];

List<Friendrequest> freindRequests = [
  Friendrequest(
      name: "khadeja",
      image: "/assets/images/image.jpg",
      lastMessage: "",
      email: "kha@md.com",
      isAccepted: false,
      isRejected: false),
  Friendrequest(
      name: "scammer",
      image: "/assets/images/image.jpg",
      lastMessage: "pls accept i want to sell you a car",
      email: "scam@md.com",
      isAccepted: false,
      isRejected: true),
  Friendrequest(
      name: "mahmoud",
      image: "/assets/images/image.jpg",
      lastMessage: "",
      email: "mahmoud@md.com",
      isAccepted: true,
      isRejected: false),
]; 


//reDesigen for Message bubble in chat page


//show image message and edit model 
