import 'package:flutter/material.dart';
import 'package:elementivate/data.dart';
class ElementList extends StatefulWidget {
  @override
  _ElementListState createState() => _ElementListState();
}

class _ElementListState extends State<ElementList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Select An Element',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: ElementNames.length,
        itemBuilder: (context , index){
            return ListTile(

              title: Text(

                '${ElementNames[index]['name']} \(${ElementNames[index]['symbol']}\)',

              ),
              onTap: (){
                Navigator.pushNamed(context, '/element' , arguments: {
                  'index': index,
                  'nameOfElement' : ElementNames[index]['name'],
                  'symbolOfElement': ElementNames[index]['symbol'],
                });
              },
            );
        },
      ),
    );
  }
}
