import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    String resultText;
    if (resultScore <= 10){
      resultText = 'You know nothing about ADG!!!';
    }
    else if (resultScore == 20){
      resultText = 'You did well!!!';
    }
    else if (resultScore == 30){
      resultText="You're an expert on ADG!!!!";
    }
    else {
      resultText="Wut?!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget> [
          Text(
            resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "Your score = $resultScore",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            color: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
              onPressed: resetHandler,
              child: Text(
                  'Try Again!',
                ),
            textColor: Colors.white
            ,)
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
