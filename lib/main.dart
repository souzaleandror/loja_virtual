import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/login_screen.dart';

void main() {
  runApp(new MaterialApp(
      title: "Flutters Clothings",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 4, 125, 141)),
      debugShowCheckedModeBanner: false,
      home: LoginScreen()));
}
