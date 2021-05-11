import 'package:adg_quiz_app/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const[
    {'questionText':'What does ADG stand for?',
      'answers':[
  {'text':'Anonymous Developer\'s Gang', 'score':0},
  {'text':'Apple Developer\'s  Group', 'score':10},
        {'text': 'Amphibian Danger Group', 'score':0},
        {'text': 'Aeronautical Damaged Gangarene', 'score':0},
      ],
    },
    {'questionText': 'What does Nihal do at ADG?',
      'answers':[
        {'text':'Dances', 'score':0},
        {'text': 'Watches Anime', 'score':0},
        {'text': 'LEARNS APP DEV!!!', 'score':10},
        {'text':'Sleeps', 'score':0},
        ],
    },
    {'questionText': 'What does Nihal like other than App Dev?',
      'answers':[
    {'text':'Web Dev', 'score':0},
    {'text':'Machine Learning', 'score':0},
    {'text': 'Anime', 'score':0},
    {'text':  'All of the above', 'score':10},
       ],
    },

  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score){

    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex +1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print('We have more questions!');
    } else {
      print('No more questions :(');
    }

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "ADG QUIZ APP ;)",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          elevation: 0.0,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            :Result(_totalscore, _resetQuiz),
      ),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

