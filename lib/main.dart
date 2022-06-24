

import 'package:flutter/material.dart';
import 'package:saabui/screens/screen1.dart';
import 'package:saabui/screens/screen2.dart';
import 'package:saabui/screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Form3()
     
    );
  }
}