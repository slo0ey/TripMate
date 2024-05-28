import 'package:flutter/material.dart';
import 'package:tripmate/constants.dart';
import 'package:tripmate/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6CA6CD)),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}