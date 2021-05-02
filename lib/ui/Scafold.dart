import 'package:flutter/material.dart';


class Welcome extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    _PrintOrder(){    // _function   "_" Encapsulation
      print("Order Details");
    }
    return new Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar:new AppBar(
        title: new Text("Product Details"),
        backgroundColor: Colors.lightGreen.shade900,
        actions: [
          new IconButton(onPressed: _PrintOrder, icon: new Icon(Icons.print)), 
          new IconButton(onPressed: ()=> debugPrint("Setting"), icon: new Icon(Icons.settings)), //Anonymous Function
          
        ],
      ),
      body: new Container(
        alignment: Alignment.center,
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new IconButton(icon: new Icon(Icons.add),onPressed: _PrintOrder), 
            new InkWell(
                child: new Text("Add to Cart !!",
                style:new TextStyle(
                  fontSize: 25,
                  color: Colors.white
                )
              ),
                onDoubleTap:()=> debugPrint("Double Tapped !"),
                onTap:()=>  debugPrint("Tapped !"),
            )
          ],
        )
      ), 
      floatingActionButton:new FloatingActionButton(
        onPressed: null,
        tooltip:"Checkout",
        child: new Icon(Icons.skip_next),
        backgroundColor: Colors.deepPurpleAccent.shade100, 
      ),
      bottomNavigationBar: new BottomNavigationBar(items:[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.add_shopping_cart),
          label:"Shopping",
        ),
        new BottomNavigationBarItem(
        icon: new Icon(Icons.payment),
        label:"Pay"
        ),
      ]  ,
       fixedColor:Colors.green
      ),
     


    );
  }
}