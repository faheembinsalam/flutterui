import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/crud/update_data.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('vendorproducts').snapshots();
  CollectionReference product =
      FirebaseFirestore.instance.collection('vendorproducts');

  Future<void> deleteUser(String id) {
    return product
        .doc(id)
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UpDateProduct(
                                id: document.id,
                                name: data['name'],
                                price: data['price'])));
                  },
                  title: Text(data['name']),
                  subtitle: Text(data['price']),
                  trailing: IconButton(
                    onPressed: () {
                      deleteUser(document.id);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
