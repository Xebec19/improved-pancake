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
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My First App')),
          body: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
              Answer(answerQuestion),
              Answer(answerQuestion),
              Answer(answerQuestion),
            ],
          )),
    );
  }
}
