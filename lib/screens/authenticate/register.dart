import 'package:flutter/material.dart';
import 'package:login/shared/constants.dart';

void main() => runApp(Register());

class Register extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/signIn');
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
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
