import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture"),
      ),
      body: GestureDetector(
        onTap: () {
          isPressed = !isPressed;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: isPressed ? Colors.blue : Colors.white,
        ),
      ),
    );
  }
}
