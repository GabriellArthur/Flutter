import 'package:flutter/material.dart';
import 'package:flutter_carros/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}
