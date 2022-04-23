import 'package:flutter/material.dart';
import 'package:any_do/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Any.do', theme: ThemeData(), home: Login());
  }
}
