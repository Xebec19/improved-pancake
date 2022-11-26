import 'package:flutter/material.dart';
import 'package:learn_flutter/answer.dart';

import './question.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'color': ['red', 'blue', 'green', 'yellow'],
      },
      {
        'questionText': 'What\'s your favourite color?',
        'color': ['red', 'blue', 'green', 'yellow'],
      },
      {
        'questionText': 'What\'s your favourite color?',
        'color': ['red', 'blue', 'green', 'yellow'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My First App')),
          body: Column(
            children: [
              Text(
                questions[questionIndex]['questionText'],
              ),
              ...(questions[questionIndex]['colors'] as List<String>)
                  .map((answer) {
                return Answer(answer);
              }).toList()
            ],
          )),
    );
  }
}
