import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gmail/register.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _signInGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    return user;
  }

  Future<http.Response> createAccount(String id) async{
   print(id);
   String url = 'https://us-central1-panama-ac424.cloudfunctions.net/api/users/$id';
   Map<String,String> headers ={"Content-type": "application/json"};
   var response = await http.get(url,headers: headers);
   
    if(response.statusCode == 200){
      return Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }else{
      return Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
    }
}
  
  @override
  Widget build(BuildContext context) {
    final loginGmail = Material(
              color: Color(0xFF303030),
              child: ButtonTheme(
                minWidth: 350.0,
                height: 50.0,
                child: RaisedButton.icon(
                icon: Icon(MdiIcons.gmail,size: 30,),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                elevation: 10,
                highlightElevation: 20,
                color: Color(0xFF00E676),
                textColor: Colors.white, 
                onPressed: (){
                  _signInGoogle()
                      .then((FirebaseUser user) => 
                                  createAccount(user.uid)
                        )
                      .catchError((e) => print(e));
                    }, 
                label: Text("Login With Gmail",
                style: TextStyle(
                    fontSize: 20 
                  ),
                ),
            ),
              ),
          );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            loginGmail,
          ],
        ),
      ),
    );
  }
}