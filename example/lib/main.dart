import 'package:flutter/material.dart';
import 'package:flutter_touch_spin_2/flutter_touch_spin_2.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double value = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TouchSpin Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter TouchSpin')),
        body: Center(
          child: Column(
            children: [
              TouchSpin(
                key: UniqueKey(),
                value: value,
                min: 5,
                max: 100,
                step: 5,
                displayFormat:
                    NumberFormat.currency(locale: 'en_US', symbol: '\$'),
                textStyle: const TextStyle(fontSize: 36),
                iconSize: 48.0,
                addIcon: const Icon(Icons.add_circle_outline),
                subtractIcon: const Icon(Icons.remove_circle_outline),
                iconActiveColor: Colors.green,
                iconDisabledColor: Colors.grey,
                iconPadding: const EdgeInsets.all(20),
                onChanged: (val) {
                  debugPrint(val.toString());
                },
                enabled: true,
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: TouchSpin(
                      value: 10,
                      min: 5,
                      max: 100,
                      step: 1,
                      textStyle: const TextStyle(fontSize: 18),
                      iconSize: 24.0,
                      addIcon: const Icon(Icons.arrow_circle_up),
                      subtractIcon: const Icon(Icons.arrow_circle_down),
                      iconActiveColor: Colors.blue,
                      iconDisabledColor: Colors.grey,
                      iconPadding: const EdgeInsets.all(20),
                      onChanged: (val) {
                        debugPrint(val.toString());
                      },
                      enabled: true,
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: TouchSpin(
                      value: 10,
                      min: 5,
                      max: 100,
                      step: 5,
                      textStyle: const TextStyle(fontSize: 18),
                      iconSize: 24,
                      addIcon: const Icon(Icons.arrow_forward),
                      subtractIcon: const Icon(Icons.arrow_back),
                      iconActiveColor: Colors.red,
                      iconDisabledColor: Colors.grey,
                      iconPadding: const EdgeInsets.all(20),
                      onChanged: (val) {
                        debugPrint(val.toString());
                      },
                      enabled: true,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() => value = 25);
                },
                child: const Text('Set to \$25'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
