import 'package:flutter/material.dart';

class Countgame extends StatefulWidget {
  const Countgame({super.key});

  @override
  State<Countgame> createState() => _CountgameState();
}

class _CountgameState extends State<Countgame> {
  int countA = 0, countB = 0;

  @override
  Widget build(BuildContext context) {
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
                    Text(
                      "$countA",
                      style: TextStyle(fontSize: 35),
                    ),
                    MaterialButton(
                      onPressed: () {
                        countA++;
                        setState(() {});
                      },
                      color: Colors.orange,
                      child: const Text("Add 1 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        countA += 2;
                        setState(() {});
                      },
                      color: Colors.orange,
                      child: const Text("Add 2 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        countA += 3;
                        setState(() {});
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
                    Text(
                      "$countB",
                      style: const TextStyle(fontSize: 35),
                    ),
                    MaterialButton(
                      onPressed: () {
                        countB++;
                        setState(() {});
                      },
                      color: Colors.orange,
                      child: Text("Add 1 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        countB += 2;
                        setState(() {});
                      },
                      color: Colors.orange,
                      child: const Text("Add 2 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        countB += 3;
                        setState(() {});
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
                countA = 0;
                countB = 0;
                setState(() {});
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
