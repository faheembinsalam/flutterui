import 'package:crud_en_flutter/message_response.dart';
import 'package:crud_en_flutter/modify_contact.dart';
import 'package:crud_en_flutter/register_contact.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String _title;
  MyHomePage(this._title);
  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  List<Client> clients = [
    Client(name: 'Will', surname: 'Mora', phone: '302 454 25 93'),
    Client(name: 'Sam', surname: 'Perez', phone: '322 412 34 68'),
    Client(name: 'Marlon', surname: 'Gutierrez', phone: '301 441 36 98'),
    Client(name: 'Jhon', surname: 'Segura', phone: '310 789 90 62')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
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
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ModifyContact(clients[index])))
                  .then((newContact) {
                if (newContact != null) {
                  setState(() {
                    clients.removeAt(index);

                    clients.insert(index, newContact);

                    messageResponse(context, newContact.name + "!");
                  });
                }
              });
            },
            onLongPress: () {
              removeClient(context, clients[index]);
            },
            title: Text(clients[index].name + " " + clients[index].surname),
            subtitle: Text(clients[index].phone),
            leading: CircleAvatar(
              child: Text(
                clients[index].name.substring(0, 1),
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.grey,
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (_) => RegisterContact()))
              .then((newContact) {
            if (newContact != null) {
              setState(() {
                clients.add(newContact);
                messageResponse(context, newContact.name + "!");
              });
            }
          });
        },
        tooltip: "Agregar Contacto",
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
    );
  }

  removeClient(BuildContext context, Client client) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Message"),
              content: Text("Do You Want Delete This " + client.name + "?"),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      this.clients.remove(client);
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                    "YES",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "NO",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ));
  }
}

class Client {
  var name;
  var surname;
  var phone;

  Client({this.name, this.surname, this.phone});
}
