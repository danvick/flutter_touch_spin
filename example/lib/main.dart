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
            value: 10,
            min: 5,
            max: 100,
            step: 5,
            displayFormat: NumberFormat.currency(locale: 'en_US', symbol: '\$'),
            textStyle: TextStyle(fontSize: 36),
            iconSize: 48.0,
            addIcon: Icon(Icons.add_circle_outline),
            subtractIcon: Icon(Icons.remove_circle_outline),
            iconActiveColor: Colors.green,
            iconDisabledColor: Colors.grey,
            iconPadding: EdgeInsets.all(20),
            onChanged: (val){
              print(val);
            },
            enabled: true,
          ),
        ),
      ),
    );
  }
}