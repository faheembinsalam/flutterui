//import 'package:contactapp/buyer/buyer_home.dart';
//import 'package:contactapp/screen/loginscreen.dart';
//import 'package:contactapp/screen/loginscreen.dart';

import 'package:ecommerce/buyer/buyer_home.dart';
import 'package:ecommerce/screen/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';

import 'crud/adddata.dart';
import 'crud/display_product.dart';

//import 'crud/adddata.dart';

//import 'screen/welcomescreen.dart';

final box = GetStorage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Sb Shop Hai',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
        builder: EasyLoading.init());
  }
}
