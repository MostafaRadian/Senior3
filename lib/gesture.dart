import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'gesture_provider.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture"),
      ),
      body: Consumer(
        builder: (BuildContext context, GestureProvider value, Widget? child) {
          return GestureDetector(
            onTap: () {
              value.pressed();
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: value.isPressed ? Colors.blue : Colors.white,
            ),
          );
        },
      ),
    );
  }
}
