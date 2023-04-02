import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:the_last_stand/configs/configs.dart';

import 'package:the_last_stand/utils/utils.dart';
import 'package:the_last_stand/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.y!,
                Text(
                  "Think you can ",
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "run against time",
                  style: AppText.h3b!.copyWith(
                    height: 1,
                  ),
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Get on',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' Excited',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' Lets go :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
