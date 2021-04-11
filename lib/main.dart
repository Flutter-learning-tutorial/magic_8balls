import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(AskMeAnything());
}

class AskMeAnything extends StatelessWidget {
  const AskMeAnything({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me something'),
        ),
        body: AskMeAnythingBody(),
      ),
    );
  }
}

class AskMeAnythingBody extends StatefulWidget {
  @override
  _AskMeAnythingBodyState createState() => _AskMeAnythingBodyState();
}

class _AskMeAnythingBodyState extends State<AskMeAnythingBody> {
  int answerNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.white),
        onPressed: () {
          setState(() {
            answerNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$answerNumber.png'),
      ),
    );
  }
}
