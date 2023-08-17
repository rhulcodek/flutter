import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:helloworld/maindrawer.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: MyDrawer(),
  ));
}

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDrawerState();
  }
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
