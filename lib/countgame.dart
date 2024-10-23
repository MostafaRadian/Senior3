import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'game_provider.dart';

class Countgame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameProvider gameObject = Provider.of<GameProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Count Game"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 40),
                    ),
                    Consumer(
                      builder: (BuildContext context, GameProvider value,
                              Widget? child) =>
                          Text(
                        "${value.countA}",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gameObject.addA(value: 1);
                      },
                      color: Colors.orange,
                      child: const Text("Add 1 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gameObject.addA(value: 2);
                      },
                      color: Colors.orange,
                      child: const Text("Add 2 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gameObject.addA(value: 3);
                      },
                      color: Colors.orange,
                      child: const Text("Add 3 point"),
                    )
                  ],
                ),
                Container(
                  width: 5,
                  height: 230,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 40),
                    ),
                    Consumer<GameProvider>(
                      builder: (BuildContext context, value, Widget? child) =>
                          Text(
                        "${value.countB}",
                        style: const TextStyle(fontSize: 35),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gameObject.addB(value: 1);
                      },
                      color: Colors.orange,
                      child: Text("Add 1 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gameObject.addB(value: 2);
                      },
                      color: Colors.orange,
                      child: const Text("Add 2 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gameObject.addB(value: 3);
                      },
                      color: Colors.orange,
                      child: const Text("Add 3 point"),
                    )
                  ],
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                gameObject.resetAB();
              },
              color: Colors.orange,
              child: const Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}
