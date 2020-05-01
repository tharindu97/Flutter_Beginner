import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
          child: AppBar(
          backgroundColor:Colors.cyanAccent,
          leading: IconButton(
                icon: Icon(Icons.navigate_before),
                tooltip: 'Next page',
                onPressed: () {},
          ),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/emma.jpg'),
                  fit: BoxFit.fitHeight
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 110)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text('Thrindu Kavishna \npanama Srilanka'),
                       Padding(padding: EdgeInsets.only(top: 10)),
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
                ]
              )
           ),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              //color: Colors.greenAccent
            ),
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Favourites')
                  ],
                ),
              ),
            ),
          Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Gallery')
                  ],
                ),
              ),
            ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        onTap: null,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.white,
            ),
            title: Text('data') 
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person,
              color: Colors.white,
            ),
            title: Text('data') 
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.mail,
              color: Colors.white,
            ),
            title: Text('data') 
          ),
        ] 
      ),
    )
  );
  }
}
