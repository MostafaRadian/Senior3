import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'livetext_provider.dart';

class LiveText extends StatelessWidget {
  LiveText({super.key});

  @override
  Widget build(BuildContext context) {
    //var pov = Provider.of<LiveTextProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Consumer(
              builder: (context, LiveTextProvider liveObject, child) =>
                  TextFormField(
                onChanged: (value) {
                  liveObject.addText(value);
                },
                decoration: const InputDecoration(
                  labelText: "Test me",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Consumer(
              builder: (BuildContext context, LiveTextProvider liveObject,
                      Widget? child) =>
                  Text(
                liveObject.words,
              ),
            ),
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
