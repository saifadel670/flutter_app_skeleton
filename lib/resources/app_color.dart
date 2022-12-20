import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Colors.white;
  static const int primarySwatch = 0xff026081;
  static const Color secondaryColor = Color(0xffF2FDFE);

  static const Color errorBg = Colors.red;
  static const Color enableColor = Colors.green;
  static const Color disableColor = Colors.grey;

  static const Color appBodyLightBg = secondaryColor;
  static const Color appBodyDarkBg = Color(0xff0D1117);

  static final Color lightTextColor = Colors.grey.shade900;
  static final Color darkTextColor = Colors.grey.shade100;

  static const Color lightHintTextColor = Color(0xff2F3136);
  static const Color darkHintTextColor = Colors.white;

  static const Color lightPrefixIconColor = Colors.grey;
  static final Color darkPrefixIconColor = Color(0xff2F3136);

  static const Color lightLineSeparatorColor =
      Color.fromARGB(255, 226, 223, 223);
  static const Color darkLineSeparatorColor = Color.fromARGB(221, 97, 95, 95);

  static const Color lightTextFieldFillColor =
      Color.fromARGB(255, 198, 202, 211);
  static const Color darkTextFieldFillColor = Color(0xff2F3136);

  static const Color lightTextFieldHintColor = Color(0xff2F3136);
  static const Color darkTextFieldHintColor =
      Color.fromARGB(255, 198, 202, 211);

  static final Color lightBoarderColor = Colors.grey.shade900;
  static final Color darkBoarderColor = Colors.grey.shade100;

  static const Color lightSearchFieldFillColor = Color(0xffEFEFF0);
  static const Color darkSearchFieldFillColor = Color(0xff262930);

  static const Color lightCardColor = Colors.white;
  static const Color darkCardColor = Colors.black;

  static const Color lightWarningColor = Color.fromARGB(255, 217, 155, 9);
  static const Color darkWarningColor = Color.fromARGB(255, 90, 7, 3);

  static const Color lightCardShadowColor = Colors.grey;
  static const Color darkCardShadowColor = Colors.white;

  static const Color lightLoaderColor = Colors.grey;
  static const Color darkLoaderColor = Colors.white;

  static const Color lightBottomNavBgColor = lightCardColor;
  static const Color darkBottomNavBgColor = darkCardColor;

    // MARK:- Tab bar
  static const Color selectedColor = Colors.black;
  static Color tabBarIconSelectedColor = Colors.blue;
  static Color tabBarIconUnselectedColor = Colors.black;
  static Color tabBarTitleColor = Colors.white;

  static const Map<int, Color> primaryColorMap = {
    50: Color.fromRGBO(2, 96, 129, .1),
    100: Color.fromRGBO(2, 96, 129, .2),
    200: Color.fromRGBO(2, 96, 129, .3),
    300: Color.fromRGBO(2, 96, 129, .4),
    400: Color.fromRGBO(2, 96, 129, .5),
    500: Color.fromRGBO(2, 96, 129, .6),
    600: Color.fromRGBO(2, 96, 129, .7),
    700: Color.fromRGBO(2, 96, 129, .8),
    800: Color.fromRGBO(2, 96, 129, .9),
    900: Color.fromRGBO(2, 96, 129, 1)
  };
}
