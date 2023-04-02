import 'package:the_last_stand/configs/configs.dart';
import 'package:the_last_stand/utils/about_utils.dart';
import 'package:the_last_stand/utils/utils.dart';
import 'package:the_last_stand/utils/work_utils.dart';

import 'package:the_last_stand/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:the_last_stand/constants.dart';
import 'package:the_last_stand/widget/about_me_data.dart';
import 'package:the_last_stand/widget/community_button.dart';
import 'package:the_last_stand/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Us',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Survival of the fittest',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Who am I?",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
        ],
      ),
    );
  }
}
