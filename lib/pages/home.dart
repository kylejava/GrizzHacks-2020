import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Elementovate'
            ),
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/elementlist');
                },
                icon: Icon(Icons.edit),
                label: Text('Learn'),
            )
          ],
        ),
      ),
    );
  }
}
