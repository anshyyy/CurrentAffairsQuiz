import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/constants.dart';
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
              children: [ProgressBar()],
            ),
          ),
        )
      ],
    );
  }
}
