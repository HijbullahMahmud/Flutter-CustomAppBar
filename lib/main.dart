import 'package:flutter/material.dart';
import 'package:fluttercustomappbar/screens/using_gradient.dart';
import 'package:fluttercustomappbar/screens/using_image.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
        accentColor: Colors.redAccent),
    home: HomePage(),
  ));
}

