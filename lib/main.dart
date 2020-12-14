import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/profile_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Color(0xff8bda9f), // status bar color
    ),
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff3f0f0),
        primaryColor: Colors.greenAccent[400],
       // Color(0xff8bda9f),
      ),
      home: Profile()
    );
  }
}
