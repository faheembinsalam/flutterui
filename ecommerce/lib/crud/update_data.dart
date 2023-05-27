import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/crud/display_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../themecolor/colors.dart';

class UpDateProduct extends StatefulWidget {
  final String id, name, price;
  const UpDateProduct(
      {super.key, required this.id, required this.name, required this.price});

  @override
  State<UpDateProduct> createState() => _UpDateProductState();
}

class _UpDateProductState extends State<UpDateProduct> {
  TextEditingController productname = TextEditingController();
  TextEditingController productprice = TextEditingController();
  CollectionReference product =
      FirebaseFirestore.instance.collection('vendorproducts');
  Future<void> updateUser() {
    return product
        .doc(widget.id)
        .update({
          'name': productname.text,
          'price': productprice.text,
        })
        .whenComplete(() {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => UserInformation()),
              (route) => false);
          return EasyLoading.dismiss();
        })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  void initState() {
    productname.text = widget.name;
    productprice.text = widget.price;
    super.initState();
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
                      const Text("Edit Prodcuts",
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
                          updateUser();
                        },
                        height: 60,
                        minWidth: double.maxFinite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: kPrimarycolor,
                        child: Text(
                          "Update Product",
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
