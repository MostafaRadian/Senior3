import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senior4/counter_provider.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider<CountProvider>(
        create: (BuildContext context) => CountProvider(),
        child: HomePage(),
      ),
    );
  }
}
