import 'package:flutter/material.dart';

class DriveMod extends StatefulWidget {
  @override
  _DriveModState createState() => _DriveModState();
}

class _DriveModState extends State<DriveMod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Drive Mode'),
      ),
      body: new Center(
        child: new Text('This the Drive Mode Page'),
      ),
    );
  }
}
