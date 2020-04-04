import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;
  var question = [
    'What\'s your favorite color?',
    'Where were you born?',
    'What is your hobby?',
    "What is your name?"
  ];

  void answeredQuestion(){
    print("chosen Answer");
    setState(() {
      qIndex++;
      if(qIndex==4){qIndex=0;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: Column(
        children: <Widget>[
          Text(question[qIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: answeredQuestion,),
          RaisedButton(child: Text("Answer 2"), onPressed: answeredQuestion,),
          RaisedButton(child: Text("Answer 3"), onPressed: answeredQuestion,),
        ],
      ),
    ),
    );
  }

}