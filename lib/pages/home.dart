import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(30.0),

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  'Elementovate',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/elementlist');
                },
                label: Text('   Learn   '),
                icon: Icon(Icons.library_books),
                color: Colors.white,

              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/activitylist');
                },
                label: Text('Practice'),
                icon: Icon(Icons.edit),
                color: Colors.white,

              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/elementlist');
                },
                label: Text('    Info    '),
                icon: Icon(Icons.info_outline),
                color: Colors.white,

              )
            ],
          ),
        ),
      ),
    );
  }
}
