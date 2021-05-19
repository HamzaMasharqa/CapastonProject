import 'package:flutter/material.dart';
import 'package:flutter_app/Drive.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      home: myNavigationBar()
    );
  }
}

class myNavigationBar extends StatefulWidget {
  @override
  _myNavigationBarState createState() => _myNavigationBarState();
}

class _myNavigationBarState extends State<myNavigationBar> {
  int currentIndex = 0;
  final List<Widget> _children = [
     UserPage(),
    HomePg(),
    DriveMod()
  ];

  void onTappedBar(int index){
    setState(() {
      currentIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

body: _children[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTappedBar,
            currentIndex: currentIndex,
            items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.account_box),
          // ignore: deprecated_member_use
          title: new Text('User'),
        ),BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          // ignore: deprecated_member_use
          title: new Text('Home.dart'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.directions_car),
          // ignore: deprecated_member_use
          title: new Text('Drive'),
        ),
      ]),
    );
  }
}
