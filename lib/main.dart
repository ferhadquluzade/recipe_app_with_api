import 'package:flutter/material.dart';
import 'package:recipe_app_with_api/views/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food recipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2:TextStyle(color:Colors.white)
        )
      ),
      home: HomePage(),
    );
  }
}

