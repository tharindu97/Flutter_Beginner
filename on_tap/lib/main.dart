import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.redAccent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 1
                    )
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('APPS'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 1
                    )
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('MOVIES'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 1
                    )
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('GAMES'),
                  ),
                ),
              ),
            ] 
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Apps')
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Movies')
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Games')
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
