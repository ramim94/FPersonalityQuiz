import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final tells dart the value won't change after initialization
  final String _questionText;


  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: double.infinity,

      margin: EdgeInsets.only(bottom : 2.0),
      alignment: Alignment(0,0),
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Text("What is your favorite color? \nis it Blue?",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.start,
      ),
    ) ;
  }
}
