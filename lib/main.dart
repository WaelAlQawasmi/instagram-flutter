import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/Home.dart';
import 'package:flutter_taskes/secreens/task1.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'taskes',
    debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home:  Home(),
    );
  }
}
