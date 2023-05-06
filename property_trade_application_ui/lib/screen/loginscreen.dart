import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:property_trade_application_ui/screen/discoverbestscreen.dart';
import 'package:property_trade_application_ui/screen/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCheckbox();
  }
}

class MyCheckbox extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  "assets/images/login.png",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 0,
                ),
                Column(
                  children: const [
                    Text(
                      "Login to Your Account",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                //textfield
                Center(
                    child: Container(
                        width: 500,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon:
                                  const Icon(Icons.email, color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 3),
                              )),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                        width: 500,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 3),
                              )),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.lightBlue,
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue!;
                            });
                          }),
                      const Text(
                        "Remember me",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff030303)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                            padding: EdgeInsets.all(
                                10) //content padding inside button
                            ),
                        onPressed: () {
                          //code to execute when this button is pressed.
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DiscoverBestScreen()));
                        },
                        child: const Text("Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)))),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(0),
                          //content padding inside button
                        ),
                        onPressed: () {},
                        child: Text(
                          "Forgot the password?",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey[400],
                      thickness: 0.5,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Or continue with",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey[400],
                      thickness: 0.5,
                    )),
                  ],
                ),
                const SizedBox(height: 30),

                //social icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffd5d2d2)),
                      ),
                      child: Image.asset("assets/images/fbicon.png"),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffd5d2d2)),
                      ),
                      child: Image.asset("assets/images/google.png"),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffd5d2d2)),
                      ),
                      child: Image.asset("assets/images/apple.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      const SizedBox(width: 8),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(0)),
                            padding: const EdgeInsets.all(0),
                            //content padding inside button
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()));
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
