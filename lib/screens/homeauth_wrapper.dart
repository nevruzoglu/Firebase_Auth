import 'package:flutter/material.dart';
import 'package:login/screens/authenticate/authenticate.dart';

void main() => runApp(HomeAuthWrapper());

class HomeAuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
