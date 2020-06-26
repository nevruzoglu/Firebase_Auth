import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';
import 'package:login/shared/constants.dart';

void main() => runApp(SignIn());

class SignIn extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              icon: Icon(Icons.track_changes),
              label: Text("Register"))
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
              child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration:
                    kTextFieldDecoration.copyWith(labelText: "Enter email"),
              ),
              SizedBox(height: 20),
              TextFormField(
                  controller: _passwordController,
                  decoration: kTextFieldDecoration.copyWith(
                      labelText: "Enter password")),
              SizedBox(height: 20),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print(_emailController.text);
                  print(_passwordController.text);
                },
                child: Text("Sign In"),
                color: Colors.pink,
              )
            ],
          ))),
    );
  }
}
