import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(fontSize: 25);
  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Text( 'Clicks quantity', style: textStyle),
              Text( '$counter', style: textStyle),
            ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Click');
          // counter++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
