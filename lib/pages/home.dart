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

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/logo.png',
                    height: 300,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 50.0,
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/elementlist');
                },
                label: Text('   Learn   ' ,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                icon:  IconTheme(
                  data: new IconThemeData(
                      color: Colors.yellow),
                  child: new Icon(Icons.library_books),
                ),
                color: Colors.black,

              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/activitylist');
                },
                label: Text('Practice' ,
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                icon:  IconTheme(
                  data: new IconThemeData(
                      color: Colors.yellow),
                  child: new Icon(Icons.edit),
                ),
                color: Colors.black,

              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/information');
                },
                label: Text('    Info    ',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                icon:  IconTheme(

                  data: new IconThemeData(
                      color: Colors.yellow),
                  child: new Icon(Icons.info_outline),
                ),
                color: Colors.black,

              )
            ],
          ),
        ),
      ),
    );
  }
}
