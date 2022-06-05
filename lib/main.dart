import 'package:biodent/layout/biodent_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {

        '/': (context) => const MyHomePage(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Biodent Egypt',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     // home: MyHomePage(),
    );
  }
}

