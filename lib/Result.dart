import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are... strange?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Center(
          child: Text(
            "Your Score Is ${resultScore} ${resultPhrase} ",
            style: TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: resetQuiz,
          child: Text(
            "Restart button",
          ),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
        )
      ],
    ));
  }
}
