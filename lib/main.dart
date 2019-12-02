import 'package:flutter/material.dart';
import 'package:mytreemap_flutter_app/elearning_page.dart';
import 'package:mytreemap_flutter_app/profile_page.dart';
import 'package:mytreemap_flutter_app/treemap_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Sunflower'
      ),
      home: TreeMapPage(),
    );
  }
}