import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Map<String,Object> answerText;
  var onPressedFunction;

  Answer(this.answerText, this.onPressedFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text(answerText["text"]),
        onPressed:() => onPressedFunction(answerText["score"]),
      ),
    );
  }
}
