import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome/quiz/component/options.dart';

import '../../../../constants.dart';
import '../../../../models/Questions.dart';

class questionCard extends StatelessWidget {
  const questionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]['question'],
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          option(),
          option(),
          option(),
          option(),
        ],
      ),
    );
  }
}
