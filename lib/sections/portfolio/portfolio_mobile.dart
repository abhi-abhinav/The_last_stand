import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_last_stand/configs/configs.dart';
import 'package:the_last_stand/constants.dart';
import 'package:the_last_stand/utils/project_utils.dart';
import 'package:the_last_stand/utils/utils.dart';
import 'package:the_last_stand/widget/custom_text_heading.dart';
import 'package:the_last_stand/widget/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGlimpses",
        ),
        const CustomSectionSubHeading(
          text: "\n\n",
        ),
        Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(
              //<-- SEE HERE
              width: 5,
            ),
          ),
          child: Image.asset(
              '/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/rules.png'),
        ),
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(50),
          child: OutlinedButton(
            onPressed: () => openURL(StaticUtils.gitHub),
            child: Text(
              'See More',
              style: AppText.l1b,
            ),
          ),
        )
      ],
    );
  }
}
