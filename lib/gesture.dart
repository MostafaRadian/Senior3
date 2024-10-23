import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'gesture_provider.dart';

class GesturePage extends StatelessWidget {
  const GesturePage({super.key});

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
