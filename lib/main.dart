import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _question = [
    'What\'s your favorite color?',
    'Where were you born?',
    'What is your hobby?',
    "What is your name?"
  ];

  void _answeredQuestion(){
    print("chosen Answer");
    setState(() {
      _qIndex++;
      if(_qIndex==4){_qIndex=0;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: Column(
        children: <Widget>[
          Text(_question[_qIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: _answeredQuestion,),
          RaisedButton(child: Text("Answer 2"), onPressed: _answeredQuestion,),
          RaisedButton(child: Text("Answer 3"), onPressed: _answeredQuestion,),
        ],
      ),
    ),
    );
  }

}