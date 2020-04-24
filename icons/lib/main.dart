import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icons'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: new Icon(MdiIcons.facebook,
                color: Colors.blueAccent,
                size: 50,
              ),
              ),
            IconButton(
              onPressed: null,
              icon: new Icon(MdiIcons.gmail,
                color: Colors.red,
                size: 50,
              ),
              ),
              RaisedButton.icon(
                onPressed: null,
                label: Text('Submit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue
                  ),
                ),
                icon: Icon(MdiIcons.facebook,
                  color: Colors.blueAccent,
                  size: 20,
                ),
              )
          ],
        ),
      ),
    );
  }
}