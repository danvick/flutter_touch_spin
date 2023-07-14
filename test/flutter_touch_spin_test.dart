import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_touch_spin_2/flutter_touch_spin.dart';

void main() {
  testWidgets('Touch Spin', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: TouchSpin()),
      ),
    );
  });
}
