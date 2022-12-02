import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/welcome/quiz/component/options.dart';
import 'package:quiz_app/screens/welcome/quiz/component/questionCard.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../controllers/progressbar.dart';

class body extends StatelessWidget {
  const body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                ProgressBar(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text.rich(TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: kSecondaryColor),
                      )
                    ])),
                Divider(
                  thickness: 1.5,
                ),
                SizedBox(height: kDefaultPadding),
                Expanded(
                  child: PageView.builder(
                      itemBuilder: (context, index) => questionCard()),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
