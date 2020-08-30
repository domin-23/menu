import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  Home1({Key key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text('home page')),
    );
  }
}
