import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senior4/livetext.dart';
import 'package:senior4/livetext_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => LiveTextProvider(),
        child: LiveText(),
      ),
    );
  }
}
