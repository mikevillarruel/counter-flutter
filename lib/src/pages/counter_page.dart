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
      floatingActionButton: _createButtons(),
    );
  }
  
  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: const Icon(Icons.exposure_zero),onPressed: _reset),
        const Expanded(child: SizedBox()),
        FloatingActionButton(child: const Icon(Icons.remove),onPressed: _subtract),
        const SizedBox(width: 5.0),
        FloatingActionButton(child: const Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _subtract() {
    setState(() => _counter--);
  }

  void _reset() {
    setState(() => _counter = 0);
  }
  
}