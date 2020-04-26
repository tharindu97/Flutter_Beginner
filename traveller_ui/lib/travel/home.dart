import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool count;

  final favilt = Material(
    child: Container(
      color: Colors.yellow,
      child: Center(
        child: Column(
          children: <Widget>[
            Text('Favirit false')
          ],
        ),
      ),
    ),
  );

  final setting = Material(
    child: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Text('setting true')
          ],
        ),
      ),
    ),    
  );


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         color: Colors.greenAccent,
         child: Column(
           children: <Widget>[

             SizedBox(
               height: 200.0,
               child: Container(
                 color: Colors.yellowAccent,
                 child: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                        Text('Tharindu Kavishna \npanama Srilanka',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent
                              ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 50)),
                        CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 60,
                          ) 
                     ],
                   ),
                 ),
               ),
             ),


             SizedBox(
               height: 25,
               child: Container(
                 color: Colors.grey,
                 child: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       RaisedButton(
                         child: Text('FAVOURITES',
                         style: TextStyle(
                            color: Colors.white
                            ),
                          ),
                         onPressed: () => count = false
                         ),
                       Padding(padding: EdgeInsets.only(left: 100)),
                       RaisedButton(
                         child:  Text('SETTING',
                         style: TextStyle(
                           color: Colors.white
                          ),
                         ),
                         onPressed: () => count = true,
                       ),
                     ],
                   ),
                 ),
               ),
             ),

             SizedBox(
               height: 250,
               child: Container(
                 color: Colors.redAccent,
                 child: Center(
                   child: Column(
                     children: <Widget>[
                       count == false ? favilt : setting                   
                     ],
                   ),
                 ),
               ),
             )
           ],
         ),
       ),
    );
  }
}