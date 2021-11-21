import 'package:flutter/material.dart';
import 'package:registar/registration/registaretion.dart';
import 'package:registar/registration/registration2.dart';
import 'package:registar/registration/registration3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Registration3(),
    );
  }
}

