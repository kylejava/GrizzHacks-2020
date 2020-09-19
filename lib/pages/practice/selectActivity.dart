import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Practice' ,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

    );
  }
}
