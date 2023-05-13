import 'package:crud_en_flutter/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:crud_en_flutter/text_box.dart';

class ModifyContact extends StatefulWidget {
  final Client _client;
  ModifyContact(this._client);
  @override
  State<StatefulWidget> createState() => _ModifyContact();
}

class _ModifyContact extends State<ModifyContact> {
  TextEditingController controllerName;
  TextEditingController controllerSurname;
  TextEditingController controllerPhone;

  @override
  void initState() {
    Client c = widget._client;
    controllerName = new TextEditingController(text: c.name);
    controllerSurname = new TextEditingController(text: c.surname);
    controllerPhone = new TextEditingController(text: c.phone);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Contact"),
        backgroundColor: Color.fromARGB(255, 172, 170, 170),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('Delete')),
              const PopupMenuItem(child: Text('Sort List')),
            ];
          })
        ],
      ),
      body: ListView(
        children: [
          TextBox(controllerName, "Name"),
          TextBox(controllerSurname, "Nickname"),
          TextBox(controllerPhone, "Phone"),
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  String name = controllerName.text;
                  String surname = controllerSurname.text;
                  String phone = controllerPhone.text;

                  if (name.isNotEmpty &&
                      surname.isNotEmpty &&
                      phone.isNotEmpty) {
                    Navigator.pop(context,
                        new Client(name: name, surname: surname, phone: phone));
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, // Background color
                ),
                child: Text("Submit")),
          ),
        ],
      ),
    );
  }
}
