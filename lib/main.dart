import 'package:flutter/material.dart';

import 'counter_page.dart';
import 'store.counter/counter.dart';
final counter = Counter();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}
