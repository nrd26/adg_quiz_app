import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.grey[800],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
