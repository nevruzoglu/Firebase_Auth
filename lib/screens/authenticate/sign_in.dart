import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';
import 'package:login/shared/constants.dart';

void main() => runApp(SignIn());

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Auth _auth = Auth();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String error = "Hatalı";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.arrow_forward),
              label: Text("Register"))
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
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) =>
                        EmailValidator.validate(val) ? null : "Invalid email",
                    controller: _emailController,
                    decoration:
                        kTextFieldDecoration.copyWith(labelText: "Enter email"),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                      validator: (val) => val.length < 6
                          ? "Please enter 6+ length password"
                          : null,
                      controller: _passwordController,
                      decoration: kTextFieldDecoration.copyWith(
                          labelText: "Enter password")),
                  SizedBox(height: 20),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        dynamic result = await _auth.signInWithEmailAndPassword(
                            _emailController.text, _passwordController.text);
                        if (result == null) {
                          setState(() {
                            error = "Cant sign In";
                          });
                        }
                      }
                    },
                    child: Text("Sign In"),
                    color: Colors.pink,
                  ),
                  SizedBox(height: 20),
                  Text(error,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600))
                ],
              ))),
    );
  }
}
