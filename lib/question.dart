import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final tells dart the value won't change after initialization
  final String _questionText;


  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2.0),
      child: Text(_questionText,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    ) ;
  }
}
