import 'package:flutter/material.dart';
import 'package:widgets_basicos/screens/new_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewDetail(),
    );
  }
}

/*Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Widgets App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text(
            'Esta aplicación es\n para \n aprender\n  los\n conceptos básicos',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              backgroundColor: Colors.cyanAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
      */
