import 'package:flutter/material.dart';
import 'package:elementivate/data.dart';
//After the user selects which activity they want to play, this page will give random elements that the user has to type the correct name of the element

class CorrectName extends StatefulWidget {
  @override
  _CorrectNameState createState() => _CorrectNameState();
}

class _CorrectNameState extends State<CorrectName> {
  var _index = 36;

  Widget singleElement(_index){
    print(_index);
      return Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 300.0),
        child: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10.0),
                Text(
                    elementNames[_index]['atomicNumber'].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontFamily: 'Helvetica'
                  ) ,
                ),
                SizedBox(height: 30.0),
                Text(
                  elementNames[_index]['symbol'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 120.0,
                      fontFamily: 'Helvetica'
                  ) ,
                ),
                SizedBox(height: 30.0),
                Text(
                  elementNames[_index]['atomicMass'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'Helvetica'
                  ) ,
                ),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Which element is this?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: singleElement(_index),
    );
  }
}
