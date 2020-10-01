import 'package:app/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  // appbar with title Home
  Widget build(BuildContext context) => new Scaffold(
    backgroundColor: Color(0xFF284940),
    appBar: new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: new Text('Home'),
    ),
   // container with logout option
    body: new Container(
      decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
         topLeft: Radius.circular(40.0),
         topRight: Radius.circular(40.0)
                ),
              ),
      margin: new EdgeInsets.only(
        top: 50.0
      ),
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Text('Welcome to App!'),
          new FlatButton(
            child: new Text(
              'Logout'
            ),
            onPressed: () {
              appAuth.logout().then(
                  (_) => Navigator.of(context).pushReplacementNamed('/login')
              );
            }
          )
        ],
      ),
    ),
  );
}
