import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/pages/home_page.dart';

void main() => runApp(FashionApp());

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
