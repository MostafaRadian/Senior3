import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<CountProvider>(context);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "Counter",
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${counter.count}",
                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      counter.decrement();
                    },
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      counter.increment();
                    },
                    child: const Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
