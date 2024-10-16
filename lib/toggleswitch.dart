import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle switch"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(visible: isOn, child: Text("Im here")),
          MaterialButton(
            onPressed: () {
              isOn = !isOn;
              setState(() {});
            },
            child: Text(
              isOn ? "on" : "off",
              style: TextStyle(fontSize: 30),
            ),
            color: isOn ? Colors.green : Colors.red,
          ),
        ],
      )),
    );
  }
}
