import 'package:flutter/material.dart';

class GridViewTest extends StatelessWidget {
  GridViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 30,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (BuildContext context, int index) => itemBuild(),
      ),
    );
  }
}

Widget itemBuild() => Container(
      color: Colors.blue,
    );
