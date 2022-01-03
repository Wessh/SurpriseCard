import 'package:flutter/material.dart';
import 'package:foldingcell/screens/surprise_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

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
