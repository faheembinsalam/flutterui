import 'dart:async';
//import 'dart:js';

import 'package:chatapp/view/chat_view.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ChatView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 205, 207, 205),
          child: Center(child: Image.asset('assets/images/splashlogo.png'))),
    );
  }
}
