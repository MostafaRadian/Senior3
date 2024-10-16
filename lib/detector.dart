import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        child: Center(
          child: Container(
            color: isPressed ? Colors.blue : Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Text(
              "Press anywhere",
            ),
          ),
        ),
        onTap: () {
          isPressed = !isPressed;
          setState(() {});
        },
      ),
    );
  }
}
