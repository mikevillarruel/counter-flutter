import 'package:counter/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{

  @override
  createState() => _CounterPageState();

}

class _CounterPageState extends State<CounterPage>{

  final TextStyle _textStyle = const TextStyle(fontSize: 25);
  int _counter = 0;

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
              Text( 'Clicks quantity', style: _textStyle),
              Text( '$_counter', style: _textStyle),
            ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print('$_counter');

          setState(() {
            _counter++;
          });
        
        },
        child: const Icon(Icons.add),
      ),
    );
  }
  
}