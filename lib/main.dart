import 'package:flutter/material.dart';
import 'package:flutterpersonalityquiz/answer.dart';
import 'package:flutterpersonalityquiz/question.dart';

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
    {"questionText" : "What\'s your favorite color?",
    "answers" : ["Red", "Black", "White"]
    },
    {"questionText" : "Where were you born?",
      "answers" : ["Chittagong", "Dhaka", "Coxs Bazar"]
    },
    {"questionText" : "What is your hobby?",
      "answers" : ["Gaming", "Coding", "Sleeping"]
    },
    {"questionText" : "What is your name?",
      "answers" : ["Ramim", "Hamim", "Shamim"]
    }
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
          Question(_question[_qIndex]["questionText"]),
//          Answer("Answer 1", _answeredQuestion,),
//          Answer("Answer 2", _answeredQuestion,),
//          Answer("Answer 3", _answeredQuestion,),
          ...(_question[_qIndex]["answers"] as List<String>)
            .map((eachAnswer) {
          return Answer(eachAnswer,_answeredQuestion);
        }).toList()
        ],
      ),
    ),
    );
  }

}