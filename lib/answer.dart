import 'package:flutter/material.dart';
import './answer.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                textStyle: MaterialStateTextStyle.all(Colors.blue)),
            onPressed: selectHandler,
            child: Text('Answer 1')));
  }
}
