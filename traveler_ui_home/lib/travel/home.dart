import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final favourites = Material(
      child: Container(
        color: Colors.purple[900],
        child: Row(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 190,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 230,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/emma.jpg'),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          SizedBox(
                            height: 55,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Tharindu Kavishna',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('panama north')
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Container(
                    height: 300,
                    width: 190,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 230,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('image/emma.jpg'),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          SizedBox(
                            height: 55,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Tharindu Kavishna',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text('panama north')
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                ],
              ),
      ),
    );

    final galery = Material(
      child: Container(
        color: Colors.purple[900],
        child: Row(
          children: <Widget>[
            Card(
              child: Container(
                height: 100,
                width: 90,
                child: Image.asset(
                'image/emma.jpg',
                fit: BoxFit.fill,
              ),
              ),
            ),
            Card(
              child: Container(
                height: 100,
                width: 89,
                child: Image.asset(
                'image/emma.jpg',
                fit: BoxFit.fill,
              ),
              ),
            ),
            Card(
              child: Container(
                height: 100,
                width: 89,
                child: Image.asset(
                'image/emma.jpg',
                fit: BoxFit.fill,
              ),
              ),
            ),
            Card(
              child: Container(
                height: 100,
                width: 90,
                child: Image.asset(
                'image/emma.jpg',
                fit: BoxFit.fill,
              ),
              ),
            ),
          ],
        ),
      ),
    );
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350),
          child: AppBar(
          backgroundColor:Colors.purple,
          leading: IconButton(
                icon: Icon(Icons.navigate_before),
                tooltip: 'Next page',
                onPressed: () {},
          ),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/emma.jpg'),
                  fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 210)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Padding(padding: EdgeInsets.only(left: 150)),
                       Container(
                         child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                  Text('Tharindu Kavishna',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                    ),
                                  ),
                                  Text('panama north')
                              ],
                            ),
                       ),
                       Padding(padding: EdgeInsets.only(top: 10)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           RaisedButton(
                             padding: EdgeInsets.all(0.0),
                             child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple[900]
                                ),
                                padding: EdgeInsets.all(10),
                                child: Text('  Message  ',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                               onPressed: null
                             ),
                            Padding(padding: EdgeInsets.only(left: 150)),
                            Column(
                              children: <Widget>[
                                RaisedButton(
                             padding: EdgeInsets.all(0.0),
                             child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.purple
                                ),
                                padding: EdgeInsets.all(10),
                                child: Text('  Book Now  ',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                               onPressed: null
                             ),
                                Text('DoenTown')
                              ],
                            )
                         ],
                       )
                     ],
                   ),
                ]
              )
           ),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('ABOUT'),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('FAVOURITES'),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('GALLERY'),
                  ),
                ),
            ]
          ),
        ),
      ),
      body: TabBarView(
        children: [
          Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('About')
                  ],
                ),
              ),
            ),
          Container(
            color: Colors.purple[900],
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                favourites,
                Padding(padding: EdgeInsets.only(top: 8)),
                favourites,
                Padding(padding: EdgeInsets.only(top: 8)),
                favourites,
                Padding(padding: EdgeInsets.only(top: 8)),
                favourites
              ],
            ),
          ),
          Container(
            color: Colors.purple[900],
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                galery,
                galery,
                galery,
                galery,
              ],
            ),
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[900],
        onTap: null,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.white,
            ),
            title: Text('data',
              style: TextStyle(
                color: Colors.white
              ),
            ) 
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person,
              color: Colors.white,
            ),
            title: Text('data',
              style: TextStyle(
                color: Colors.white
              ),
            ) 
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.mail,
              color: Colors.white,
            ),
            title: Text('data',
              style: TextStyle(
                color: Colors.white
              ),
            ) 
          ),
        ] 
      ),
    )
  );
  }
}
