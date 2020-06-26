import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home screen'),
          backgroundColor: Colors.blue[40],
          elevation: 0,
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                await Auth().signOut();
              },
              icon: Icon(Icons.person),
              label: Text("Log out"),
            )
          ],
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
