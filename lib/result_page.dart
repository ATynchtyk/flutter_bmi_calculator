import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090E21),
      body: Center(
        child: Text(
          'REsultPage'.toUpperCase(),
          style: const TextStyle(fontSize: 45.0, color: Colors.white),
        ),
      ),
    );
  }
}
