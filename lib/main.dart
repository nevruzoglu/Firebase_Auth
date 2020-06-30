import 'package:flutter/material.dart';
import 'package:login/models/user.dart';
import 'package:login/screens/authenticate/register.dart';
import 'package:login/screens/authenticate/sign_in.dart';
import 'package:login/screens/homeauth_wrapper.dart';
import 'package:login/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Auth().user,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/signIn': (context) => SignIn(),
          '/register': (context) => Register(),
        },
        home: HomeAuthWrapper(),
      ),
    );
  }
}
