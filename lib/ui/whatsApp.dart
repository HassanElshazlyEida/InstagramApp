
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Whatsapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.search),
          ),
            Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.more_vert_outlined),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child:    Icon(Icons.message),
        backgroundColor: Colors.greenAccent,onPressed: null,),
      body:ListView(children: [
        component(),
        component(),
        component(),
        component(),
        component(),
        component(),
        component(),
        component(),
      ])
    );
  }
  Widget component(){
    return ListTile(
        title: Text("Mr Dracoula"),
        subtitle: Text("Hello from the other side"),
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        trailing: new Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("11:00 AM",
              style:TextStyle(color: Colors.greenAccent,fontSize: 13),),
            )
          ,
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child:CircleAvatar(
                radius: 11,
                child:Text(
                "3",
                style:TextStyle(color: Colors.white,fontSize: 13),
                ),
                backgroundColor: Colors.greenAccent,
              ),
            )
            
          ],
        ),
      
      );
  }
}


