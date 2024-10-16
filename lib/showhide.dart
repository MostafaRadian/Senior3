import 'package:flutter/material.dart';

class ShowHide extends StatefulWidget {
  const ShowHide({super.key});

  @override
  State<ShowHide> createState() => _ShowHideState();
}

class _ShowHideState extends State<ShowHide> {
  bool isVis = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVis,
              child: Text('Text is Shown'),
            ),
            MaterialButton(
              onPressed: () {
                isVis = !isVis;
                setState(() {});
              },
              child: Text(isVis ? 'Hide' : 'Show'),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
