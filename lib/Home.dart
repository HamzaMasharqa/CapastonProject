import 'package:flutter/material.dart';


class HomePg extends StatefulWidget {
  @override
  _HomePgState createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title:
        Text('Home Page'),
      ),
      body: new Center(
        child: new Text('This is the Home Page'),
      ),
    );
  }
}
