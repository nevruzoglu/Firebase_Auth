import 'package:flutter/material.dart';
import 'package:login/screens/authenticate/sign_in.dart';

void main() => runApp(Authenticate());

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
