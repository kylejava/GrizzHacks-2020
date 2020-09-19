import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


class ElementPage extends StatefulWidget {
  @override
  _ElementPageState createState() => _ElementPageState();
}

class _ElementPageState extends State<ElementPage> {
  Map elementInfo = {};


  Widget front(){
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 60.0),
      child: Container(
        color: Colors.blue,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              Align(

                alignment: FractionalOffset.topCenter,
                child: Text(
                  elementInfo['atomicNumber'].toString(),
                  style: TextStyle(
                      fontSize: 50.0,
                    fontFamily: 'Helvetica'
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Text(
                elementInfo['symbolOfElement'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 150.0,
                    fontFamily: 'Helvetica'
                ),

              ),
              SizedBox(height: 15.0),
              Text(
                  elementInfo['nameOfElement'],
                style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'Helvetica'
                ),

              ),
              SizedBox(height: 120.0),
              Text(
                  elementInfo['atomicMass'],
                style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'Helvetica'
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget back(){
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 60.0),
      child: Container(

        color: Colors.blue,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.0),
              Align(
                alignment: FractionalOffset.topCenter,
                child: Text(
                  elementInfo['nameOfElement'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 20.0,
                endIndent: 20.0,
                thickness: 3.0,
              ),
              SizedBox(height: 50.0),
              Row( //ATOMIC NUMBER ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ATOMIC NUMBER:    ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    elementInfo['atomicNumber'].toString(),
                    style: TextStyle(

                      fontSize: 22.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( //ELEMENT SYMBOL ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'SYMBOL:    ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    elementInfo['symbolOfElement'],
                    style: TextStyle(

                      fontSize: 22.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( //ATOMIC WEIGHT
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ATOMIC MASS:    ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    elementInfo['atomicMass'],
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( // GROUP ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'GROUP:    ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    elementInfo['groupBlock'],
                    style: TextStyle(

                      fontSize: 22.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( // STANDARD STATE ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'STANDARD STATE:    ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    elementInfo['state'],
                    style: TextStyle(

                      fontSize: 22.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( // BONDING TYPE STATE
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'BONDING TYPE:    ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  Text(
                    elementInfo['bondingType'],
                    style: TextStyle(

                      fontSize: 22.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ],

              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    'Discovered in ' + elementInfo['year'].toString(),
                    style: TextStyle(

                      fontStyle: FontStyle.italic,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    elementInfo = ModalRoute.of(context).settings.arguments;
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
      body: FlipCard(
        direction: FlipDirection.HORIZONTAL, // default
        front: front(),
        back: back(),
      ),
    );
  }
}
