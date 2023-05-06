import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/about.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("home Screen"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AboutUs(),
                ),
              );
            },
            child: const Text("go to aboutus"))
      ],
    );
  }
}
