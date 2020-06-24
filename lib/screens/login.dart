import 'package:flutter/material.dart';
import 'package:login/shared/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passworController = TextEditingController();

  bool _success;
  String _userEmail;
  String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(16),
        child: FlatButton(
          padding: EdgeInsets.all(16),
          onPressed: () {},
          child: Text("Sign in Anonymous"),
          color: Colors.pink,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        // child: Form(
        //   key: _formKey,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: <Widget>[
        //       TextFormField(
        //         keyboardType: TextInputType.emailAddress,
        //         textAlign: TextAlign.center,
        //         controller: _emailController,
        //         validator: (value) =>
        //             value.isEmpty ? "Email can\'t be emtpy" : null,
        //         decoration:
        //             kTextFieldDecoration.copyWith(labelText: "Enter email"),
        //         // onSaved: (value) => _email = value,
        //       ),
        //       SizedBox(height: 20),
        //       TextFormField(
        //         textAlign: TextAlign.center,
        //         controller: _passworController,
        //         obscureText: true,
        //         validator: (value) =>
        //             value.isEmpty ? "Password can\'t be emtpy" : null,
        //         decoration:
        //             kTextFieldDecoration.copyWith(labelText: "Enter Password"),
        //         // onSaved: (value) => _password = value,
        //       ),
        //       SizedBox(height: 20),
        //       FlatButton(
        //         padding: EdgeInsets.all(16),
        //         onPressed: () {},
        //         child: Text("Sign in Anonymous"),
        //         color: Colors.pink,
        //         textColor: Colors.white,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(20)),
        //       ),
        //       SizedBox(height: 20),
        //       Container(
        //         padding: EdgeInsets.all(16),
        //         alignment: Alignment.center,
        //         child: Text(
        //           _success == null ? '' : (_success ? 'bravo' : 'olmadı'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passworController.dispose();
    super.dispose();
  }
}
