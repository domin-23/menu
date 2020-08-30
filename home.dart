import 'package:flutter/material.dart';
import 'package:menu/page/home1.dart';
import 'package:menu/page/home2.dart';
import 'package:menu/page/home3.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  Widget page(int index) {
    switch (index) {
      case 0:
        return Home1();
      case 1:
        return Home2();
      case 2:
        return Home3();

        break;
      default:
        return Home1();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page(_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            _index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('perfil')),
            BottomNavigationBarItem(
                icon: Icon(Icons.adjust), title: Text('ajuste'))
          ]),
    );
  }
}
