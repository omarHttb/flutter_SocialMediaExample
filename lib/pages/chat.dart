import 'package:flutter/material.dart';
import 'package:flutter_sep/models/message.dart';
import 'package:flutter_sep/models/person.dart';
import 'package:image_picker/image_picker.dart';

class ChatPage extends StatefulWidget {
  final Person friend;

  const ChatPage({super.key, required this.friend});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    friend = widget.friend;
    if (widget.friend.lastMessage != "") {
      setState(() {
        _messages.add(Message(
            msg: widget.friend.lastMessage,
            name: widget.friend.name,
            time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
            color: freindMsgColor,
            isFriendMsg: true,
            msgType: EnMessagetype.text));
      });
    }
  }

//properties
  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];

  Person? friend;

  Color freindMsgColor = Colors.blue;
  Message message = Message(
      msg: "",
      name: "",
      time: "",
      color: Colors.white,
      isFriendMsg: false,
      msgType: EnMessagetype.text);
  Color meMsgColor = Colors.green;
//function
  Future<void> _pickAndSendImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        sendImage(pickedImage.path);
      });
    }
  }

  void _sendMessage() {
    if (_messageController.text != "") {
      setState(() {
        _messages.add(Message(
            msg: _messageController.text.toString(),
            name: 'Me',
            time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
            isFriendMsg: false,
            color: meMsgColor,
            msgType: EnMessagetype.text));
      });
      _messageController.clear();
    }
  }

  void sendVoiceMessage() {
    setState(() {
      _messages.add(Message(
          msg: "",
          name: "me",
          time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
          color: meMsgColor,
          isFriendMsg: false,
          msgType: EnMessagetype.voiceMsg));
    });
  }

  void sendImage(String imgLocation) {
    setState(() {
      _messages.add(Message(
          msg: imgLocation,
          name: "me",
          time: "${(DateTime.now().hour)}:${(DateTime.now().minute)}",
          color: meMsgColor,
          isFriendMsg: false,
          msgType: EnMessagetype.img));
    });
  }

  Widget chatMessage() {
    switch (message.msgType) {
      case EnMessagetype.text:
        return Text(message.msg);
      case EnMessagetype.img:
        return Image(image: NetworkImage(message.msg));
      case EnMessagetype.voiceMsg:
        return const Text("sending voice message...");
      default:
        return Text("");
    }
  }

//ui widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.friend.image),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.friend.name,
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  'Active now',
                  style: TextStyle(fontSize: 12, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                message = _messages[index];
                return Align(
                  alignment: message.isFriendMsg
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    width:
                        message.msg.length < 20 ? 130 : message.msg.length * 4,
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 200),
                    decoration: BoxDecoration(
                        color: message.color,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(message.isFriendMsg
                                ? message.name
                                : message.time),
                            Spacer(),
                            Text(message.isFriendMsg
                                ? message.time
                                : message.name),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        //the message
                        chatMessage(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.image),
                  onPressed: () {
                    _pickAndSendImage();
                    ;
                  },
                ),
                IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: () {
                    sendVoiceMessage();
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Aa',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//TF for messages
//call icon
//friend image
//friend name
//record icon
//pick image icon
//send message button
//message widget (msg, name, time,color)