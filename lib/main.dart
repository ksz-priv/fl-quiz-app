import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(FlDev());
}

class FlDev extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlDevState();
  }
}

class _FlDevState extends State<FlDev> {
  var questionIndex = 0;
  
  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

