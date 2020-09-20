import 'package:elementivate/pages/practice/correctGroup.dart';
import 'package:elementivate/pages/practice/correctState.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Kyle/Desktop/grizzhacks-2020/elementivate/lib/pages/learn/element.dart';
import 'file:///C:/Users/Kyle/Desktop/grizzhacks-2020/elementivate/lib/pages/learn/elementlist.dart';
import 'package:elementivate/pages/home.dart';
import 'package:elementivate/pages/practice/selectActivity.dart';
import 'package:elementivate/pages/practice/correctName.dart';
import 'package:elementivate/pages/info/information.dart';
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
        '/activitylist' : (context) => ActivityList(),
        '/correctname': (context) => CorrectName(),
        '/correctgroup': (context) => CorrectGroup(),
        '/correctstate' : (context) => CorrectState(),
        '/information' : (context) => Information(),
      },
    );
  }
}
