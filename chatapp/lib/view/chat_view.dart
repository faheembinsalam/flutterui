import 'package:flutter/material.dart';

import 'chat_model.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    //var arrNames = ['Abdulla', 'Sajid', 'Zarar', 'Jahanzaib'];
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Commitee Chat App"),
          backgroundColor: const Color(0xff075E54),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('Setting')),
                const PopupMenuItem(child: Text('Media,links and docs')),
                const PopupMenuItem(child: Text('Search')),
                const PopupMenuItem(child: Text('Mute notifications')),
              ];
            })
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(child: Text('chat')),
              Tab(child: Text('group')),
              Tab(child: Text('call')),
            ],
          ),
        ),
        body: Container(
          child: TabBarView(children: [
            Center(
              child: Text(
                'Camera',
                style: TextStyle(fontSize: 40),
              ),
            ),
            ListView.separated(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(chatList[index].profilePic),
                  ),
                  title: Text(chatList[index].title),
                  subtitle: Text(chatList[index].message),
                  trailing: Text(chatList[index].time),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
            Center(
              child: Text(
                'Group',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Center(
              child: Text(
                'Call',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff075E54),
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
