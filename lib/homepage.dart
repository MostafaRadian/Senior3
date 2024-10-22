import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senior4/counter_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              Consumer(
                builder: (BuildContext context, CounterProvider value,
                    Widget? child) {
                  return Text(
                    "${value.num}",
                    style: const TextStyle(fontSize: 30, color: Colors.blue),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer(
                    builder: (BuildContext context, CounterProvider value,
                            Widget? child) =>
                        FloatingActionButton(
                      onPressed: () {
                        value.decrement();
                      },
                      child: const Icon(Icons.remove),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Consumer(
                    builder: (BuildContext context, CounterProvider value,
                            Widget? child) =>
                        FloatingActionButton(
                      onPressed: () {
                        value.increment();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
