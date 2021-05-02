import 'package:flutter/material.dart';


class TextInputs extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return new Home();
  }

}
class Home extends State<TextInputs> {

  String info="";
  void _showInfo(String name){
      setState(() {
        info=name;
      });
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
      appBar:new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Buttons"),
      ),
      body: new Container(
        padding:new EdgeInsets.all(22.0),
        margin:new EdgeInsets.only(top:22.0) ,
        child:new Column(
          children: [
            new Text('Form User'),
            new TextField(
                autofocus: false,
                decoration: new InputDecoration(
                  icon:Icon(Icons.perm_identity),
                  labelText:"First Name",
                  hintText: "Type Your Name",
                  hintStyle: TextStyle(fontSize: 13),
                ),
                keyboardType: TextInputType.text,
                onChanged:_showInfo,
            ),
              new TextField(
                autofocus: false,
                decoration: new InputDecoration(
                  icon:Icon(Icons.email),
                  labelText:"Email",
                  hintText: "Type Your Email",
                  hintStyle: TextStyle(fontSize: 13),
                ),
                keyboardType: TextInputType.emailAddress,
            ),
            new ElevatedButton(onPressed:null, child: new Text("Submit")),
            new Text('You Wrote : {$info}'),
          ],
        ),
      )
    );
  }

  

}