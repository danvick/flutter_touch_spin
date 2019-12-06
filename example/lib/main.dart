import 'package:flutter/material.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TouchSpin Example',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter TouchSpin Example'),),
        body: Center(
          child: TouchSpin(
            iconSize: 24.0,
            min: 5,
            max: 100,
            step: 5,
            value: 10,
            displayFormat: NumberFormat.currency(locale: 'en_US', symbol: '\$'),
          ),
        ),
      ),
    );
  }
}