import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
@override
State<StatefulWidget> createState() {
return _MyAppState();
}
}
class _MyAppState extends State<MyApp> {
final _questions = const [
{
'questionText': 'Who invented C++?',
'answers': [
{'text': ' Dennis Ritchie', 'score': -2},
{'text': 'OKen Thompson', 'score': -2},
{'text': 'OBjarne Stroustrup', 'score': 10},
{'text': 'Brian Kernighan ','score': -2},
],
},
{
'questionText': 'Which of the following type is provided by C++ but not C?',
'answers': [
{'text': 'int', 'score': -2},
{'text': 'char', 'score': -2},
{'text': 'double', 'score': -2},
{'text': 'bool', 'score': 10},
],
},
{
'questionText': ' By default, all the files in C++ are opened in _________ mode.',
'answers': [
{'text': 'Binary', 'score': -2},
{'text': 'Text', 'score': 10},
{'text': 'VTC', 'score': -2},
{'text': 'ISCII', 'score': -2},
],
},
{
'questionText': 'The C++ code which causes abnormal termination/behaviour of a
program should be written under _________ block',
'answers': [
{'text': 'try', 'score': 10},
{'text': 'catch', 'score': -2},
{'text': 'throw', 'score': -2},
{'text': 'finally', 'score': -2},
],
},
{
'questionText': 'Which concept allows you to reuse the written code in C++?',
'answers': [
{'text': 'Encapsulation', 'score': -2},
{'text': 'Abstraction', 'score': -2},
{'text': 'Inheritance', 'score': 10},
{'text': 'Polymorphism', 'score': -2},
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
_totalScore += score;
setState(() {
_questionIndex = _questionIndex + 1;
});
print(_questionIndex);
if (_questionIndex < _questions.length) {
print('More questions ahead');
} else {
print('You have finished the Quiz');
}
}
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('"C++ Quiz"'),
backgroundColor: Color(0xFF15BBBB),
),
body: Padding(
padding: const EdgeInsets.all(30.0),
child: _questionIndex < _questions.length
? Quiz(
answerQuestion: _answerQuestion,
questionIndex: _questionIndex,
questions: _questions,
) //Quiz
: Result(_totalScore, _resetQuiz),
),
)
);
}
}
