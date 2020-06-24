import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';

void main() => runApp(SignIn());

class SignIn extends StatelessWidget {
  final Auth _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn Anonymous"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(16),
        child: FlatButton(
          padding: EdgeInsets.all(16),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print("there is an error");
            } else {
              print("user logged in");
              print(result);
            }
          },
          child: Text("Sign in Anonymous"),
          color: Colors.pink,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
