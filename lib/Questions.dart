import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _qusetionText;

  Question(this._qusetionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _qusetionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
