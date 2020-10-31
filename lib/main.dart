import 'package:flutter/material.dart';
import 'package:style_store/ui/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyleStore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),

        home: HomePage(),
    );
  }
}
