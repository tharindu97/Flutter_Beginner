import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
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
            color: Colors.purple,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Tharindu Kavishna \npanama Srilanka',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
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
              color: Colors.greenAccent
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
          ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Row(
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
                          Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 60,
                            child: Container(
                              child: Column(
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
                          Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 60,
                            child: Container(
                              child: Column(
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
              Padding(padding: EdgeInsets.only(top: 8)),
              Row(
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
                          Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 60,
                            child: Container(
                              child: Column(
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
                          Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 60,
                            child: Container(
                              child: Column(
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
              Padding(padding: EdgeInsets.only(top: 8)),
              Row(
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
                          Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 60,
                            child: Container(
                              child: Column(
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
                          Padding(padding: EdgeInsets.only(top: 10)),
                          SizedBox(
                            height: 60,
                            child: Container(
                              child: Column(
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
            ],
          ),
          ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          ),
        ]
      ),
    )
  );
  }
}
