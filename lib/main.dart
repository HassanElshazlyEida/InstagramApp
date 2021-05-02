
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Instagram'),
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

  var profile="https://instagram.fcai20-1.fna.fbcdn.net/v/t51.2885-19/s150x150/176550815_126859756156036_1748010140598361491_n.jpg?tp=1&_nc_ht=instagram.fcai20-1.fna.fbcdn.net&_nc_ohc=IAxTancr3NcAX_rdpHz&edm=ABfd0MgBAAAA&ccb=7-4&oh=85b895bc5047432b586c2cccef5f549f&oe=60B47402&_nc_sid=7bff83";

  List status=
  [
   ['https://instagram.fcai20-1.fna.fbcdn.net/v/t51.2885-15/e15/c0.31.640.640a/s150x150/164916465_188025519796496_7332648507508019381_n.jpg?tp=1&_nc_ht=instagram.fcai20-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=W1aUGoO0iy4AX9wPLH-&edm=AGW0Xe4BAAAA&ccb=7-4&oh=3102e0044c46275829083dc4602f5f91&oe=6090CC3C&_nc_sid=acd11b',"Random... "],
   ['https://instagram.fcai20-1.fna.fbcdn.net/v/t51.2885-15/e15/c0.306.720.720a/s150x150/122565336_349411106293964_7018327710890449592_n.jpg?tp=1&_nc_ht=instagram.fcai20-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=2gjWjH9noWoAX_H2xFy&edm=AGW0Xe4BAAAA&ccb=7-4&oh=92872276aea0992d483ba8e96736d5a9&oe=6090EE20&_nc_sid=acd11b',"Hard-Shi.."],
   ["https://instagram.fcai20-1.fna.fbcdn.net/v/t51.12442-15/e35/c0.316.720.720a/s150x150/46156631_261916021142035_6986605904310183419_n.jpg?tp=1&_nc_ht=instagram.fcai20-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=imztd1QD_-QAX8Y7v1D&edm=AGW0Xe4BAAAA&ccb=7-4&oh=4c4a90e4d9c780803880751418fb6680&oe=60907598&_nc_sid=acd11b","X-Eats"]
  ];

  List info=
  [
   ['282',"posts"],
   ['493',"followers"],
   ["347","following"]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title: Text(
          widget.title,
          style: GoogleFonts.dancingScript(
              fontSize: 25,
              fontStyle: FontStyle.normal,
              textStyle: TextStyle(color: Colors.black87),
              fontWeight: FontWeight.w900
          ),
          
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:14.0),
            child: Container(
              child:Row(
                children: [
                FaIcon(
                  FontAwesomeIcons.home,
                  size: 20,
                  color: Colors.black87,
                
                ),
                SizedBox(width:10),
                 FaIcon(
                  FontAwesomeIcons.paperPlane,
                  size: 22,
                  color: Colors.black87,
                ),
                SizedBox(width:10),
                 FaIcon(
                  FontAwesomeIcons.compass,
                  size: 22,
                  color: Colors.black87,
                ),

                 SizedBox(width:10),
                 FaIcon(
                  FontAwesomeIcons.heart,
                  size: 22,
                  color: Colors.black87,
                ),
                SizedBox(width:10),
                CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(this.profile)
                ,)

                ],
              )
            ),
          )
           

        ],
      ),

      body:Container(
          width:MediaQuery.of(context).size.width * 1 ,
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:
                [
                  Expanded(
                    flex: 1500, // 15%
                    child: Container(child:
                      Row(children: [
                        Expanded(
                          flex: 25, // 25%
                          child: Container(child:
                          CircleAvatar(
                          backgroundImage:NetworkImage(this.profile),
                          radius: 35,
                          
                           )
                        ),
                        ),
                        Expanded(
                          flex: 65, // 65%
                          child: Container(child: 
                             ListTile(
                                title: Text("hassan_elshazly...",
                                style: GoogleFonts.lato(
                                  fontSize: 20,
                                  textStyle: Theme.of(context).textTheme.overline,
                                  fontWeight: FontWeight.w500
                              )),
                                subtitle:ElevatedButton( child: Text("Edit Profile"),onPressed: null), 
                                trailing: new Column(
                                  children: [
                                     FaIcon(
                                      FontAwesomeIcons.cog,
                                      size: 22,
                                      color: Colors.black87,
                                    ),
                                  ],
                                ),
                              
                              )
                          ,),
                        ),

                      ],
                      )
                    ),
                  ),
                  Expanded(
                    flex: 3000, // 30%
                    child:Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left:14.0,top:8.0),
                        child:Align(
                          alignment: Alignment.topLeft,
                          child:  Container(   child: Text("Hassan Elshazly Eida",
                          style:TextStyle(fontWeight: FontWeight.bold
                          )
                        ),
                        ),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:14.0,top:8.0),
                        child: Container(
                          child: Text("وَإِذَا رَأَيْتَ ثَمَّ رَأَيْتَ نَعِيمًا وَمُلْكًا كَبِيرًا ........ فتهون عليك الدنيا وما فيها .. 🌏🌸",
                            )
                          ),
                      ),
                      Row(children: [
                        for(var item in this.status) component(item[0], item[1])
                        
                      ],),
                      SizedBox(height: 10,),
                        Divider(
                          color: Colors.blueGrey,
                          height: 25,

                        )
                      ],
                      )
                    
                    ,),
                  Expanded(
                    flex: 5000, // 50%
                    child: Container(child: 
                      Column(
                        children: [
                          Row(children:[
                           for(var item in this.info) features(item[0], item[1])
                          ],
                            mainAxisAlignment: MainAxisAlignment.center ,
                            crossAxisAlignment: CrossAxisAlignment.center 
                          ),
                          Divider(
                            color: Colors.blueGrey,

                          ),
                          Container(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:Row(children: [
                                    Padding(
                                        padding: const EdgeInsets.only(left:20.0),
                                        child: FaIcon(
                                              FontAwesomeIcons.cube,
                                              size: 30,
                                            color: Colors.blueGrey,
                                    ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left:12.0),
                                        child: FaIcon(
                                              FontAwesomeIcons.cog,
                                              size: 30,
                                            color: Colors.black38,  
                                    ),),
                                     Padding(
                                        padding: const EdgeInsets.only(left:12.0),
                                        child: FaIcon(
                                              FontAwesomeIcons.cog,
                                              size: 30,
                                            color: Colors.black38,
                                    ),),
                                    Padding(
                                        padding: const EdgeInsets.only(right:20.0),
                                        child: FaIcon(
                                              FontAwesomeIcons.cog,
                                              size: 30,
                                            color: Colors.black38,
                                    ),),
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                crossAxisAlignment: CrossAxisAlignment.center ) 
                            ),
                          )        
                        ],
                      )
                      )
                    ,)
                ],
          )
       ),
    
    );
  }
  
  Widget component(src,desc) {
      return Container(child:
        Padding(
        padding: const EdgeInsets.only(left:10.0,top:5.0),
        child:Column(children: [
          CircleAvatar(
          backgroundImage:NetworkImage(src),
          radius: 27,
          ),
             Padding(
               padding: const EdgeInsets.only(top:5.0),
               child: Container(
            alignment: Alignment.center,
            child: Text(
                '${desc}',
                style: TextStyle(color: Colors.black87,
                    fontWeight: FontWeight.normal,
                    fontSize: 10.0),
            )),
             )
          ],
          )
        ),
      );
  }
  Widget features(count,desc){
    return Container(
      child: Expanded(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("${count}",style: TextStyle(fontWeight:FontWeight.w800),),
              Text("${desc}",
                style: TextStyle(
                  color: Colors.grey
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}


