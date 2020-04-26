import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         color: Colors.green,
         child: Center(
           child: Column(
             children: <Widget>[
               SizedBox(
                 height: 350,
                 child: Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage('panama.png')),
                   ),
                   padding: EdgeInsets.only(top:200),
                   color: Colors.white,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text('Thrindu Kavishna \npanama Srilanka'),
                       Padding(padding: EdgeInsets.only(top: 20)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           RaisedButton(
                             child: Text('Message'),
                             onPressed: null
                             ),
                             Padding(padding: EdgeInsets.only(left: 150)),
                            Column(
                              children: <Widget>[
                                RaisedButton(
                                  child: Text('Book Now'),
                                  onPressed: null
                                ),
                                Text('DoenTown')
                              ],
                            )
                         ],
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(
                 height: 30,
                 child: Container(
                   color: Colors.red,
                   child: Center(
                     child: Row(
                       children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 30)),
                        RaisedButton(
                          child: Text('ABOUT'),
                          onPressed: null
                          ),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        RaisedButton(
                          child: Text('FAVOURITES'),
                          onPressed: null
                          ),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        RaisedButton(
                          child: Text('GALLERY'),
                          onPressed: null
                          ),
                       ],
                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
    );
  }
}