import 'package:flutter/material.dart';

class FruitsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Fruits')),
    body: Column(children: [
      Image.network('https://i.ndtvimg.com/mt/cooks/2014-11/lemon.jpg'),
    ],),
    );
  }
}