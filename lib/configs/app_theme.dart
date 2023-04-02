import 'package:flutter/material.dart';

import 'app_core_theme.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    shadowSub: const Color(0xffC0392B).withAlpha(100),
    primary: const Color(0xffC0392B),
    primaryLight: const Color(0xffC0392B).withAlpha(100),
    textSub: Color.fromARGB(255, 245, 128, 124),
    textSub2: Color.fromARGB(255, 190, 98, 98),
  );

  static AppCoreTheme light = _core.copyWith(
    background: Color.fromARGB(255, 245, 123, 123),
    backgroundSub: Color.fromARGB(255, 238, 118, 118),
    scaffold: Color.fromARGB(255, 241, 120, 120),
    scaffoldDark: Color.fromARGB(255, 236, 121, 121),
    text: Color.fromARGB(255, 252, 114, 114),
    textSub2: Color.fromARGB(255, 187, 90, 90).withOpacity(0.25),
  );

  static AppCoreTheme dark = _core.copyWith(
    background: Colors.grey[900],
    backgroundSub: const Color(0xff1c1c1e),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.white.withOpacity(0.25),
  );

  static AppCoreTheme? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? light : dark;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
