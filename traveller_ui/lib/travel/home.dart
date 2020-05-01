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
            color: Colors.blue,
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
                          backgroundColor: Colors.white,
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
          Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Favierty')
                  ],
                ),
              ),
            ),
          Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Settings')
                  ],
                ),
              ),
            ),
        ]
      ),
    )
  );
  }
}
