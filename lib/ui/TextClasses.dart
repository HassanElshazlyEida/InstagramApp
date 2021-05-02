import 'dart:html';

import 'package:flutter/material.dart';


class TextClassess extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return new Home();
  }

}
class Home extends State<TextClassess> {

  num numm=1;
  void onClick(){
      setState(() {
        numm++;
      });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text("Buttons"),
      ),
      body: new Container(
        padding:new EdgeInsets.all(22.0),
        child:new Column(
          children: [
            new Text('Counter $numm'),
            new ElevatedButton(
              onPressed: onClick,
              child: Text('Submit')
            ),
            new TextButton(
              onPressed: onClick, 
              child: Text('Click')
              ),
            new IconButton(
              icon: new Icon(Icons.airplanemode_active),
              onPressed: onClick, 
              )
          ],
          
        ),
      )
    );
  }

}