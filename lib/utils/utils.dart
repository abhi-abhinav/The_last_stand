import 'package:flutter/material.dart';
import 'package:the_last_stand/sections/about/about.dart';
import 'package:the_last_stand/sections/contact/contact.dart';
import 'package:the_last_stand/sections/home/home.dart';
import 'package:the_last_stand/sections/portfolio/portfolio.dart';
import 'package:the_last_stand/sections/services/services.dart';
import 'package:the_last_stand/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto =
      '/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/ghost-opening-doors.gif';
  static const String coloredPhoto = 'assets/work/animation_500_lfkt2x8l.gif';

  // work
  static const String dsc =
      '/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/sjec-logo.png';
  static const String sastaticket =
      '/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/sjec-logo.png';
  static const String university =
      '/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/sjec-logo.png';
  static const String fullterIsb =
      '/home/abhinav/Abhinav/flutter&flutter/devfolio/assets/work/sjec-logo.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://assets2.lottiefiles.com/packages/lf20_04mb7avw.json"
  ];

  static const List<String> socialLinks = [];

  static const String resume = 'https://drive.google.com/';

  static const String gitHub = 'https://github.com/abhi-abhinav';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
