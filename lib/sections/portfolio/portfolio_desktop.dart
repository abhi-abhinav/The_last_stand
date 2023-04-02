import 'package:flutter/material.dart';
import 'package:the_last_stand/configs/configs.dart';
import 'package:the_last_stand/constants.dart';
import 'package:the_last_stand/utils/project_utils.dart';
import 'package:the_last_stand/utils/utils.dart';
import 'package:the_last_stand/widget/custom_text_heading.dart';
import 'package:the_last_stand/widget/project_card.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nRules",
          ),
          const CustomSectionSubHeading(
            text: "\n\n",
          ),
          Space.y2!,
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
      ),
    );
  }
}
