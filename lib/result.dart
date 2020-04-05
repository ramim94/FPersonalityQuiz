import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var _totalScore;
  final Function resetQuiz;

  Result(this._totalScore,this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text("You've Completed the quiz with score of " +
                _totalScore.toString()),
            RaisedButton(
              child: Text("Reset"),
              onPressed: resetQuiz,
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
