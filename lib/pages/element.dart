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
              Text(
                elementInfo['atomicNumber'].toString(),
              ),
              SizedBox(height: 50.0),
              Text(
                elementInfo['symbolOfElement']
              ),
              SizedBox(height: 15.0),
              Text(
                  elementInfo['nameOfElement']
              ),
              SizedBox(height: 100.0),
              Text(
                  elementInfo['atomicMass']
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
                  ),
                ),
              ),
              Divider(color: Colors.black,),
              SizedBox(height: 50.0),
              Row( //ATOMIC NUMBER ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ATOMIC NUMBER:    ',
                  ),
                  Text(
                    elementInfo['atomicNumber'].toString(),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( //ELEMENT SYMBOL ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'SYMBOL:    ',
                  ),
                  Text(
                    elementInfo['symbolOfElement'],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( //ATOMIC WEIGHT
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ATOMIC MASS:    ',
                  ),
                  Text(
                    elementInfo['atomicMass'],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( // GROUP ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'GROUP:    ',
                  ),
                  Text(
                    elementInfo['groupBlock'],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row( // GROUP ROW
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'STANDARD STATE:    ',
                  ),
                  Text(
                    elementInfo['state'],
                  ),
                ],
              ),

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
