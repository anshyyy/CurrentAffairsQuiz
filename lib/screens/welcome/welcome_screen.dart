import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Text(
                  "Let's Play Quiz",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text("Enter your informations below"),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Enter your Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text('Lets start Quiz',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white)),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
