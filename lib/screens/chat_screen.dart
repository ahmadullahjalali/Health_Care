import 'package:flutter/material.dart';
import 'package:health_care/widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFF7165D6),
          leadingWidth: 30,
          title: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor3.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Doctor's Name",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding:
            const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => const ChatSample(),
        itemCount: 10,
      ),
      bottomSheet: Container(
        height: 65,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
        ]),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Type a message", border: InputBorder.none),
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
