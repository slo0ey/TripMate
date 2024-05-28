import 'package:flutter/material.dart';

import 'package:tripmate/constants.dart';
import 'package:tripmate/widgets/ViewModeSelector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ViewMode _viewMode = ViewMode.big;

  void _setViewMode(ViewMode viewMode) {
    setState(() {
      _viewMode = viewMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 72,
          title: const Text(
            appName,
            style: TextStyle(
                fontFamily: 'BagelFatOne', fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ViewModeSelector(
                  viewMode: _viewMode, updateViewMode: _setViewMode),
            ],
          ),
        ));
  }
}
