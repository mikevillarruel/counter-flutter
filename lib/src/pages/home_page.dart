import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(fontSize: 25);

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
              Text('Clicks quantity', style: textStyle),
              Text('0', style: textStyle),
            ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Click');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
