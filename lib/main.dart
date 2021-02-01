import 'package:flutter/material.dart';
import 'amount.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Tip Calculator App",
      theme: new ThemeData(primarySwatch: Colors.cyan),
      home: new Amount(),
    );
  }
}


