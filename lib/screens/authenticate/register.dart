import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:login/shared/constants.dart';

void main() => runApp(Register());

class Register extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                icon: Icon(Icons.arrow_forward),
                label: Text("Sign In"))
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                TextFormField(
                  validator: (val) => EmailValidator.validate(val)
                      ? null
                      : "Please enter valid email",
                  controller: _emailController,
                  decoration:
                      kTextFieldDecoration.copyWith(labelText: "Enter email"),
                ),
                SizedBox(height: 20),
                TextFormField(
                    validator: (val) =>
                        val.length < 6 ? "Please enter 6+ password" : null,
                    controller: _passwordController,
                    decoration: kTextFieldDecoration.copyWith(
                        labelText: "Enter password")),
                SizedBox(height: 20),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print(_emailController.text);
                      print(_passwordController.text);
                    }
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
