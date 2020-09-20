import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/logo.png',
            height: 300,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 10.0),
            child: Text(

              'ABOUT',
              style: TextStyle(
                fontSize: 50.0,
              ),

            ),
          ),
          Divider(
            color: Colors.black,
            indent: 5.0,
            endIndent: 5.0,
            thickness: 3.0,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Text(

              'Elementovate is a mobile application that acts as a tool that students from Elementary to College can use! '
                  'It is aimed to make utilizing the periodic table more efficient for learning or studying. '
                  'This app helps student by providing them more information about each element, as well as activities that will help students study for future tests/exams.'


                  ,
              style: TextStyle(
                fontSize: 20.0,
              ),

            ),
          )
        ],
      ),
    );
  }
}
