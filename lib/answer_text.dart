import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerTextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: TextField(
          onSubmitted: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter your Answer',
          ),
        ),
      ),
    );
  }
}
