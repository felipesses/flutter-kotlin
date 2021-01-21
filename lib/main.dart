import 'package:flutter/material.dart';
import 'package:flutter_kotlin/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Kotlin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}
