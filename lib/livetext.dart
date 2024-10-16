import 'package:flutter/material.dart';

class LiveText extends StatefulWidget {
  const LiveText({super.key});

  @override
  State<LiveText> createState() => _LiveTextState();
}

class _LiveTextState extends State<LiveText> {
  String words = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                words = value;
                setState(() {});
              },
              decoration: const InputDecoration(
                labelText: "Test me",
                border: OutlineInputBorder(),
              ),
            ),
            Text(words),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 150,
                height: 150,
                child: Text("hello"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
