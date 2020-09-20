import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Elementovate',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,20.0, 30.0,0.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 30.0),
            Text('test')
          ],
        ),
      ),
    );
  }
}
