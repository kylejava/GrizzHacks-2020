import 'package:flutter/material.dart';
import 'package:elementivate/pages/element.dart';
import 'package:elementivate/pages/elementlist.dart';
import 'package:elementivate/pages/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home' : (context) => HomeScreen(),
        '/elementlist': (context) => ElementList(),
        '/element': (context) => ElementPage(),
      },
    );
  }
}
