import 'package:flutter/material.dart';

class ElementPage extends StatefulWidget {
  @override
  _ElementPageState createState() => _ElementPageState();
}

class _ElementPageState extends State<ElementPage> {
  Map ElementInfo = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Go Back To List',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 100.0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test'),
          ],
        ),
      ),
    );
  }
}
