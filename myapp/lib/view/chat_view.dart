import 'package:flutter/material.dart';

import '../widget/chat_widget.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: const Color(0xff075E54),
      ),
      body: ListView(
        children: [
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.red),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.blue),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.green),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.black),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.yellow),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.red),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.blue),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.green),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.black),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.yellow),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.red),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.blue),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.green),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.black),
          customChatWidget(
              "Owais", "Assignment krdoooooo", "12:00 AM", Colors.yellow),
        ],
      ),
    );
  }
}
