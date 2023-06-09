import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:the_last_stand/animations/entrance_fader.dart';
import 'package:the_last_stand/configs/configs.dart';

import 'package:the_last_stand/utils/utils.dart';
import 'package:the_last_stand/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/ghost-opening-doors.gif"),
          fit: BoxFit.cover,
        ),
      ),
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          //    Positioned(
          //  bottom: 0,
          //    right: 0,
          //    child: Opacity(
          //  opacity: 0.9,
          //    child: EntranceFader(
          //    offset: const Offset(0, 0),
          //     delay: const Duration(seconds: 1),
          //      duration: const Duration(milliseconds: 800),
          //    child: Image.asset(
          //    StaticUtils.blackWhitePhoto,
          //  height: size.width < 1200 ? size.height * 1 : size.height * 1,
          //    ),
          //   ),
          //  ),
          //  ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                ),
                Space.y1!,
                Text(
                  "Think you can",
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(25),
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "run against time",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(25),
                    height: 1,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
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
                            'Excited',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' Lets go :)',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
