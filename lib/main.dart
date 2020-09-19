import 'package:flutter/material.dart';
import 'file:///C:/Users/Kyle/Desktop/grizzhacks-2020/elementivate/lib/pages/learn/element.dart';
import 'file:///C:/Users/Kyle/Desktop/grizzhacks-2020/elementivate/lib/pages/learn/elementlist.dart';
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
