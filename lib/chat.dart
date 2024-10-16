import 'package:flutter/material.dart';

import 'components.dart';

class Chat extends StatelessWidget {
  Chat({super.key});

  final List<String> names = [
    "Mohamed Ali",
    "Hassan badry",
    "Gannah Ahmed",
    "Taghred Ahmed",
    "El Matador",
    "Yasen Osama"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: ListView.separated(
        itemCount: 6,
        itemBuilder: (context, index) => chatItem(names[index]),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
      ),
    );
  }
}
