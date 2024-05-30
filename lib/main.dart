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
        fontFamily: 'SCoreDream',
        colorScheme: ColorScheme.fromSeed(seedColor: baseColor),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
