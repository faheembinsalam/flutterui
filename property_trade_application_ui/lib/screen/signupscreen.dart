import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:property_trade_application_ui/screen/loginscreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DataProfile();
  }
}

class DataProfile extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Fill Your Profile",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),

            Center(
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/editprofile.png"),
              ),
            ),

            //Startform
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 500,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 3),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 15),

            Center(
              child: Container(
                width: 500,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Nickname",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 3),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Center(
                child: Container(
                    width: 500,
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          labelText: "Date of Birth",
                          suffixIcon:
                              const Icon(Icons.date_range, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 3),
                          )),
                    ))),

            const SizedBox(height: 15),

            Center(
                child: Container(
                    width: 500,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          suffixIcon:
                              const Icon(Icons.email, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 3),
                          )),
                    ))),

            const SizedBox(height: 20),
            Center(
                child: Container(
                    width: 500,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Gender",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 3),
                          )),
                    ))),
            const SizedBox(
              height: 30,
            ),
            //buttoncontinue

            SizedBox(
                height: 55, //height of button
                width: 450, //width of button
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue, //background color of button
                        side: BorderSide(
                            width: 3,
                            color: Colors.blue), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(50)),
                        padding:
                            EdgeInsets.all(10) //content padding inside button
                        ),
                    onPressed: () {
                      //code to execute when this button is pressed.
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: const Text("Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)))),

            const SizedBox(
              height: 25,
            ),
          ]),
        ),
      ),
    );
  }
}
