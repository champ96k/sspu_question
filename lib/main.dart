import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';
import 'package:sspu_question/src/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPPU Bookshop',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generate,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
