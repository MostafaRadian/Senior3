import 'package:flutter/material.dart';

class LiveText extends StatefulWidget {
  LiveText({super.key});

  @override
  State<LiveText> createState() => _LiveTextState();
}

class _LiveTextState extends State<LiveText> {
  String words = '';

  @override
  Widget build(BuildContext context) {
    //var pov = Provider.of<LiveTextProvider>(context);

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
            Text(
              words,
            ),
          ],
        ),
      ),
    );
  }
}
