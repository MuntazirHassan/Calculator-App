import 'package:flutter/material.dart';
import 'home_screen.dart';


void main() {
  // print('helo world');
 runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}



