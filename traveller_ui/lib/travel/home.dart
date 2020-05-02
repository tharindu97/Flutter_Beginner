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

    final settings = Material(
      child: Container(
        color: Colors.purple[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('PERSONAL DETAILS'),
            Padding(padding: EdgeInsets.only(top:10)),
            SizedBox(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Name',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left:70)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Location',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left:70)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
          child: AppBar(
          leading: IconButton(
                icon: Icon(Icons.navigate_before),
                tooltip: 'Next page',
                onPressed: () {},
          ),
          flexibleSpace: Container(
            color: Colors.purple[800],
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 70)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Tharindu Kavishna',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                            ),
                          Text('panama Srilanka',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 50)),
                      CircleAvatar(
                          backgroundImage: AssetImage('image/emma.jpg'),
                          radius: 60,
                        ) 
                    ],
                  ),
                ]
              )
           ),
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: Colors.purple[900]
            ),
            tabs: [
              Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('FAVIERITY'),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('SETTINGS'),
                  ),
                ),
            ]
          ),
        ),
      ),
      body: TabBarView(
        children: [
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
          ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              settings
            ],
          ),
        ]
      ),
    )
  );
  }
}
