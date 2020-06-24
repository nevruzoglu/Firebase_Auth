import 'package:flutter/material.dart';
import 'package:login/screens/homeauth_wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeAuthWrapper(),
    );
  }
}
