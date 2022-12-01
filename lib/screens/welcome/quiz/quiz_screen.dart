import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/welcome/quiz/component/body.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "skip",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: body(),
    );
  }
}
