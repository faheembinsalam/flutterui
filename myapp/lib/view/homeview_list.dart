import 'package:flutter/material.dart';
import '../widget/custom_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            customContainer(Colors.yellow),
            customContainer(Colors.red),
            customContainer(Colors.green),
            customContainer(Colors.blue),
            customContainer(Colors.purple),
            customContainer(Colors.pink),
          ],
        ),
      ),
    );
  }
}
