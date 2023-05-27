import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../themecolor/colors.dart';
import 'display_product.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController productname = TextEditingController();
  TextEditingController productprice = TextEditingController();
  CollectionReference product =
      FirebaseFirestore.instance.collection('vendorproducts');
  Future<void> addProduct() {
    return product
        .add({
          'name': productname.text, // John Doe
          'price': productprice.text, // Stokes and Sons
        })
        .whenComplete(() {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => UserInformation()),
              (route) => false);
          return EasyLoading.dismiss();
        })
        .then((value) => print("Product Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Form(
                  child: Column(
                    children: [
                      const Text("Add Prodcuts",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: kPrimarycolor)),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: productname,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Product Name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Add Porduct',
                          hintText: 'Product Name',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: kFourcolor),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: kFourcolor),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: productprice,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Price";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Add Price',
                          hintText: 'Enter your Price',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: kFourcolor),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: kFourcolor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      MaterialButton(
                        onPressed: () {
                          EasyLoading.show();
                          addProduct();
                        },
                        height: 60,
                        minWidth: double.maxFinite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: kPrimarycolor,
                        child: Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kSecondcolor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
