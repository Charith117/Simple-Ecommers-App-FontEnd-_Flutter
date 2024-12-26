import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      appBar:AppBar(
        title: Text('E-Commerce App'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
