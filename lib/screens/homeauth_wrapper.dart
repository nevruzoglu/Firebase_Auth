import 'package:flutter/material.dart';
import 'package:login/models/user.dart';
import 'package:login/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() => runApp(HomeAuthWrapper());

class HomeAuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

// return either home or authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
