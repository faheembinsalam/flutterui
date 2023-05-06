import 'package:flutter/material.dart';
import 'package:property_trade_application_ui/screen/discoverbestscreen.dart';
//import 'package:property_trade_application_ui/screen/loginscreen.dart';
import 'package:property_trade_application_ui/screen/signupscreen.dart';
import 'package:property_trade_application_ui/screen/splashscreen.dart';
import 'package:property_trade_application_ui/screen/welcome_screen.dart';
//import 'package:property_trade_application_ui/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental Property',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
