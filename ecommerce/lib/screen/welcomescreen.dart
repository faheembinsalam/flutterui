import 'package:flutter/material.dart';

import '../buyer/buyer_home.dart';
import '../themecolor/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              MaterialButton(
                height: 60,
                minWidth: double.maxFinite,
                color: kPrimarycolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyerHome(),
                      ));
                },
                child: Text(
                  "Find a Products",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kSecondcolor,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                height: 60,
                minWidth: double.maxFinite,
                color: kPrimarycolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPressed: () {},
                child: Text("Start as a Vendor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kSecondcolor,
                    )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
