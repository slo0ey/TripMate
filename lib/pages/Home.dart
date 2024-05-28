import 'package:flutter/material.dart';

import 'package:tripmate/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
        toolbarHeight: 72,
        title: const Text(
          appName,
          style: TextStyle(
            fontFamily: 'BagelFatOne',
            fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings)
          )
        ],
      ),
    );
  }
}