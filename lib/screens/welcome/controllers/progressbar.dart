import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/welcome/controllers/questionController.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 90, 80, 80),
            ),
            borderRadius: BorderRadius.circular(50)),
        child: GetBuilder<QuestionController>(
            init: QuestionController(),
            builder: (controller) {
              // print(controller.animation.value);
              return Stack(
                children: [
                  LayoutBuilder(
                      builder: (context, constraints) => Container(
                            width: constraints.maxWidth *
                                controller.animation.value,
                            decoration: BoxDecoration(
                              gradient: kPrimaryGradient,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          )),
                  Positioned.fill(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${(controller.animation.value * 60).round()}sec",
                          style: TextStyle(fontSize: 15),
                        ),
                        WebsafeSvg.asset('assets/icons/clock.svg'),
                      ],
                    ),
                  ))
                ],
              );
            }),
      ),
    );
  }
}
