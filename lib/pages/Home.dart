import 'package:flutter/material.dart';

import 'package:tripmate/constants.dart';
import 'package:tripmate/utils/ViewMode.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
        title: const Text(
          appName,
          style:
              TextStyle(fontFamily: 'BagelFatOne', fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ViewModeSelector(
                  viewMode: _viewMode, updateViewMode: _setViewMode),
              Container(
                  height: 48,
                  margin:
                      const EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFF9BE),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: const Center(
                    child: Text("로그인이 되어 있지 않습니다. 로그인을 해주시기 바랍니다."),
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF6CA6CD),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100))),
        icon: const Icon(Icons.add),
        label: const Text(
          "새 여행 만들기",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
