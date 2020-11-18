import 'package:flutter/material.dart';
import 'package:flutter_auth_practice/fruits_screen.dart';
import 'package:flutter_auth_practice/login_screen.dart';
import './sign_up_screen.dart';
import './login_screen.dart';
import './fruits_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/create': (context) => SignUpScreen(),
        '/fruits': (context) => FruitsScreen()
      },
    );
  }
}

