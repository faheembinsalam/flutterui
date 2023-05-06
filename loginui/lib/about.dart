import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/homeview.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("About Screen"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            },
            child: const Text("go to Home"))
      ],
    );
  }
}
