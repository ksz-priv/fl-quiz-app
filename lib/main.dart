import 'package:flutter/material.dart';

void main() {
  runApp(FlDev());
}

class FlDev extends StatelessWidget {
void answerQuestion(Alignment bottomCenter) {
  print ('Answer chosen!');
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
            Text('The question!'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
