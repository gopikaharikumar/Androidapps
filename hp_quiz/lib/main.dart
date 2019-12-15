import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is the name of Dumbledore\'s phoenix?',
      'answers': [
        {'text': 'Hedwig', 'score': 0},
        {'text': 'Grawp', 'score': 0},
        {'text': 'Fawkes', 'score': 10},
        {'text': 'Griphook', 'score': 0},
      ],
    },
{
'questionText': 'Middle name of Tom Riddle?',
'answers': [
{'text': 'Weasley', 'score': 0},
{'text': 'Vernon', 'score': 0},
{'text': 'Marvolo', 'score': 10},
{'text': 'Barty', 'score': 0},
],
},
{
'questionText': 'Who\'s known as padfoot?',
'answers': [
{'text': 'Remus Lupin', 'score': 0},
{'text': 'Sirius Black', 'score': 10},
{'text': 'James Potter', 'score': 0},
{'text': 'Peter Pettigrew', 'score': 0},
],
},
{
'questionText': 'Who\'s the ghost of Ravenclaw?',
'answers': [
{'text': 'Fat Friar', 'score': 0},
{'text': 'Professor Binns', 'score': 0},
{'text': 'Grey lady', 'score': 10},
{'text': 'Bloody Baron', 'score': 0},
],
},
{
'questionText': 'Which house does Luna Lovegood belongs to?',
'answers': [
{'text': 'Gryffindor', 'score': 0},
{'text': 'Slytherin', 'score': 0},
{'text': 'Ravenclaw', 'score': 10},
{'text': 'Hufflepuff', 'score': 0},
],
},
{
'questionText': 'Which spell is used to unlock something?',
'answers': [
{'text': 'Stupefy', 'score': 0},
{'text': 'Alohomora', 'score': 10},
{'text': 'Expelliamus', 'score': 0},
{'text': 'Imperio', 'score': 0},
],
},
{
'questionText': 'Who is the head of Hufflepuff?',
'answers': [
{'text': 'Professor McGonagall', 'score': 0},
{'text': 'Professor Snape', 'score': 0},
{'text': 'Professor Flitwick', 'score': 0},
{'text': 'Professor Sprout', 'score': 10},
],
},
{
'questionText': 'Who killed Dumbledore?',
'answers': [
{'text': 'Voldemort', 'score': 0},
{'text': 'Draco Malfoy', 'score': 0},
{'text': 'Snape', 'score': 10},
{'text': 'Bellatrix Lestrange', 'score': 0},
],
},
{
'questionText': 'What is the name of Neville\'s toad',
'answers': [
{'text': 'Fawkes', 'score': 0},
{'text': 'Scrabbers', 'score': 0},
{'text': 'Hedwig', 'score': 0},
{'text': 'Trevor', 'score': 10},
],
},
{
'questionText': 'Which house does Cedric Diggory belongs to?',
'answers': [
{'text': 'Gryffindor', 'score': 0},
{'text': 'Slytherin', 'score': 0},
{'text': 'Hufflepuff', 'score': 10},
{'text': 'Ravenclaw', 'score': 0},
],
},
];
var _questionIndex = 0;
var _totalScore = 0;

void _resetQuiz() {
  setState(() {
    _questionIndex = 0;
    _totalScore = 0;
  });
}

void _answerQuestion(int score) {
  // var aBool = true;
  // aBool = false;

  _totalScore += score;

  setState(() {
    _questionIndex = _questionIndex + 1;
  });
  print(_questionIndex);
  if (_questionIndex < _questions.length) {
    print('We have more questions!');
  } else {
    print('No more questions!');
  }
}

@override
Widget build(BuildContext context) {
  // var dummy = const ['Hello'];
  // dummy.add('Max');
  // print(dummy);
  // dummy = [];
  // questions = []; // does not work if questions is a const

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('hp Quiz'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
        answerQuestion: _answerQuestion,
        questionIndex: _questionIndex,
        questions: _questions,
      )
          : Result(_totalScore, _resetQuiz),
    ),
  );
}
}
