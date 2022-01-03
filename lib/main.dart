import 'package:flutter/material.dart';
import 'package:foldingcell/screens/surprise_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperSurprise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SurpriseScreen(),
    );
  }
}
/*
 * 
 * 
    Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(),
    );
 * 
 */