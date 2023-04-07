import 'package:chatapp/splash_screen.dart';
//import 'package:chatapp/view/chat_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ChatView(),
      home: SplashScreen(),
    );
  }
}
