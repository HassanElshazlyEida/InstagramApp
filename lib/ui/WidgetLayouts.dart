import 'package:flutter/material.dart';


class Welcome extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Container(
      alignment: Alignment.center,
      color: Colors.deepPurpleAccent,
      child:new Row(
        children: [
          new Text(
              "Hassan Elshazly",
              textDirection: TextDirection.ltr,
              style: 
                new TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.white,
                    ),
            ),
            new Text(
              "Laravel Developer",
              textDirection: TextDirection.ltr,
              style: 
                new TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.deepOrange,
                    ),
            ),
            new Container(
              alignment:Alignment.centerLeft,
              color:Colors.white24,
              child:new Text(
                  "Projects: ",
              textDirection: TextDirection.ltr,
              style: 
                new TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                    ),
              )
            )
        ],
      )
     
    );
  }


}

/* 

  # Material 
    new Material( 
          color: Colors.deepOrange,
          child :new Center(
            child:new Text(
                  "Visual Studio Code",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    ),
              ),
            )
        );
  
*/