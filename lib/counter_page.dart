import 'package:flutter/material.dart';
import 'package:mobx_sample/store.counter/counter.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter & MobX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter', style: TextStyle(fontSize: 30)),
            Text('0', style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('Add'),
                    color: Colors.green,
                    onPressed: counter.increment,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton.icon(
                    icon: Icon(Icons.remove),
                    label: Text('Minus'),
                    onPressed: counter.decrement,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
            Text('message for overflow and underflow'),
            FlatButton.icon(
              icon: Icon(Icons.reply),
              label: Text('Reset'),
              color: Colors.red,
              onPressed: counter.reset,
            ),
          ],
        ),
      ),
    );
  }
}