import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elementivate/data.dart';
//After the user selects which activity they want to play, this page will give random elements that the user has to type the correct name of the element

class CorrectName extends StatefulWidget {
  @override
  _CorrectNameState createState() => _CorrectNameState();
}

class _CorrectNameState extends State<CorrectName> {
  final _controller = TextEditingController();
  var _index = 0;
  var _numberUserIsOn = 1;
  var _numberOfElements = elementNames.length-1;

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  Widget _singleElement(){
      return Padding(
        padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0,0.0),
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
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Text(
            '$_numberUserIsOn/$_numberOfElements ',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
          _singleElement(),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                width: 270.0,
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
             SizedBox(
               height: 60.0,
               child:  FlatButton.icon(
                   color: Colors.grey,
                   onPressed: (){
                     if(_controller.text == elementNames[_index]['name']){
                       if(_numberUserIsOn == _numberOfElements){
                         AlertDialog(
                           title: Text('You have finished!'),
                           content: Text('Redirecting back to the select screen.'),
                           actions: [
                             FlatButton(
                               child: Text('OK'),
                               onPressed: () {},
                             ),
                           ],
                         );
                       }
                       else{
                         _numberUserIsOn = _numberUserIsOn + 1;
                         _index = _index + 1;
                         _controller.clear();
                         setState(() {
                           _singleElement();
                         });
                       }
                     }
                     else{
                       showDialog(
                         context: context,
                         builder: (BuildContext context) {
                           return AlertDialog(
                             title: Text('Incorrect Element.'),
                             content: Text('Please Try Again.'),
                           );
                         },
                       );
                     }
                   },
                   icon: Icon(Icons.subdirectory_arrow_right),
                   label: Text(
                       'Enter'
                   )
               ),

             ),

            ],
          ),
        ],
      ),
    );
  }
}
