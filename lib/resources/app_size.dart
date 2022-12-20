import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

double dynamicSize(double size) =>
    Get.width <= 500 ? Get.width * size : Get.height * size;

class SizeRatio {
  static const double zero = 0;
  static const double appBarLineSeparatorWidth = 1;
  static final double appPadding = dynamicSize(.06);
  static final double cardPadding = dynamicSize(.04);
  static const double largeTitle = 20.0;
  static const double largeSubTitle = 18.0;
  static const double title = 16.0;
  static const double subTitle = 14.0;
  static const double body = 16.0;
  static const double label = 12.0;
  static const double appBarIcon = 22;
  static const double prefixIconSize = 20;
  static const double borderRadius = 10;
  static const double warningPopIconSize = 15;
  static final double bottomsheetTitleIconSize = dynamicSize(.05);
  static final double tabIconSize = dynamicSize(.08);

  static final double oneX = dynamicSize(.01);
  static final double twoX = dynamicSize(.02);
  static final double fourX = dynamicSize(.04);
  static final double fiveX = dynamicSize(.05);
  static final double sixX = dynamicSize(.04);
  static final double sevenXSize = dynamicSize(.07);
  static final double sXSize = dynamicSize(1.9);
}
