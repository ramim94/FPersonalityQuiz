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
  var _totalScore = 0;

  final _question = [
    {"questionText" : "What\'s your favorite color?",
    "answers" : [{"text":"Red","score":1}, {"text":"Black","score":2},{"text":"White","score":3}]
    },
    {"questionText" : "Where were you born?",
      "answers" : [{"text":"Chittagong","score":5}, {"text":"Dhaka","score":7},{"text":"Coxs Bazar","score":4}]
    },
    {"questionText" : "What is your hobby?",
      "answers" : [{"text":"Gaming","score":2},{"text":"Coding","score":4},{"text":"Sleeping","score":1}]
    },
    {"questionText" : "What is your name?",
      "answers" : [{"text":"Ramim","score":3},{"text":"Hamim","score":6},{"text":"Shamim","score":2}]
    }
  ];

  void _answeredQuestion(int score){
    print("chosen Answer");
    setState(() {
      if(_qIndex<_question.length){
        _totalScore+=score;
        _qIndex++;
      }
//      else{
//        _qIndex=0;
//      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: _qIndex < _question.length ? Column(
        children: <Widget>[
          Question(_question[_qIndex]["questionText"]),
//          Answer("Answer 1", _answeredQuestion,),
//          Answer("Answer 2", _answeredQuestion,),
//          Answer("Answer 3", _answeredQuestion,),
        //foreign language
          ...(_question[_qIndex]["answers"] as List<Map<String,Object>>)
            .map((eachAnswer) {
          return Answer(eachAnswer,_answeredQuestion);
        }).toList()
        ],
      ): Center(child: Text("You've Completed the quiz with score of "+_totalScore.toString()),
      ),
    ),
    );
  }

}