import 'package:flutter/material.dart';

void main() => runApp(Test());

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              height: 80,
              width: 375,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.account_circle, size: 48),
                    SizedBox(width: 12),
                    Column(children: <Widget>[
                      Text("Full name",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      SizedBox(height: 2),
                      Text(" User name",
                          style: TextStyle(fontSize: 18, color: Colors.grey))
                    ])
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
