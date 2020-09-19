import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Select an Activity' ,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
        children: [

          Container(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text(
                        'Which Element is This?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Helvetica',
                        letterSpacing: .5,
                      ),
                    ),
                    subtitle: Text('Type in the correct element, when given the symbol and atomic weight. ',
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: .5
                      ),
                    ),
                  ),
                  ButtonBar(
                    children: [
                      FlatButton(
                        child: Text('Practice'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/correctname');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Container(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text(
                      'Which Group Does This Element Belong To?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:25.0,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Helvetica',
                        letterSpacing: .5,
                      ),
                    ),
                    subtitle: Text(
                      'Type in the correct group the element belongs to.',
                        style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: .5
                     ),
                    ),
                  ),
                  ButtonBar(
                    children: [
                      FlatButton(
                        child: Text('Practice'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/correctname');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Container(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text(
                      'Assign The Correct State To Each Element',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        decoration: TextDecoration.underline,

                        fontFamily: 'Helvetica',
                        letterSpacing: .5,
                      ),
                    ),
                    subtitle: Text(
                      'Type in the correct state that the element is in.',
                      style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: .5
                      ),
                    ),
                  ),
                  ButtonBar(
                    children: [
                      FlatButton(
                        child: Text('Practice'),
                        onPressed: () {
                         // Navigator.pushNamed(context, '/correctname');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
