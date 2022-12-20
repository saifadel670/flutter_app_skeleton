import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_color.dart';
import 'app_string.dart';

class AppTheme {
  static final ThemeData lightThemeData = ThemeData(
      primarySwatch:
          const MaterialColor(AppColor.primarySwatch, AppColor.primaryColorMap),
      scaffoldBackgroundColor: AppColor.appBodyLightBg,
      navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: AppColor.appBodyLightBg,
          elevation: 0.0,
          indicatorColor: AppColor.secondaryColor),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColor.appBodyLightBg,
          barBackgroundColor: AppColor.appBodyLightBg,
          primaryColor: AppColor.primaryColor,
          primaryContrastingColor: AppColor.primaryColor,
          textTheme: CupertinoTextThemeData(
            textStyle: const TextStyle(fontFamily: AppString.fontName),
            actionTextStyle: const TextStyle(fontFamily: AppString.fontName),
            tabLabelTextStyle: const TextStyle(fontFamily: AppString.fontName),
            navTitleTextStyle: const TextStyle(fontFamily: AppString.fontName),
            navLargeTitleTextStyle:
                const TextStyle(fontFamily: AppString.fontName),
            navActionTextStyle: const TextStyle(fontFamily: AppString.fontName),
            pickerTextStyle: const TextStyle(fontFamily: AppString.fontName),
            dateTimePickerTextStyle: TextStyle(
                fontFamily: AppString.fontName,
                color: AppColor.lightTextColor,
                fontSize: 18.0),
          )),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColor.appBodyLightBg,
          titleTextStyle: TextStyle(
              color: AppColor.darkTextColor, fontWeight: FontWeight.bold),
          elevation: 0.0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          )),
      canvasColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColor.lightTextColor,
          selectionColor: AppColor.secondaryColor),
      bottomSheetTheme:
          const BottomSheetThemeData(modalBackgroundColor: Colors.transparent),
      fontFamily: AppString.fontName,
      textTheme: const TextTheme(
          headline1: TextStyle(fontFamily: AppString.fontName),
          headline2: TextStyle(fontFamily: AppString.fontName),
          headline3: TextStyle(fontFamily: AppString.fontName),
          headline4: TextStyle(fontFamily: AppString.fontName),
          headline5: TextStyle(fontFamily: AppString.fontName),
          headline6: TextStyle(fontFamily: AppString.fontName),
          subtitle1: TextStyle(fontFamily: AppString.fontName),
          subtitle2: TextStyle(fontFamily: AppString.fontName),
          bodyText1: TextStyle(fontFamily: AppString.fontName),
          bodyText2: TextStyle(fontFamily: AppString.fontName),
          caption: TextStyle(fontFamily: AppString.fontName),
          button: TextStyle(fontFamily: AppString.fontName),
          overline: TextStyle(fontFamily: AppString.fontName)));

  static final ThemeData darkThemeData = ThemeData(
      primarySwatch:
          const MaterialColor(AppColor.primarySwatch, AppColor.primaryColorMap),
      scaffoldBackgroundColor: AppColor.appBodyDarkBg,
      navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: AppColor.appBodyDarkBg,
          elevation: 0.0,
          indicatorColor: AppColor.secondaryColor),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColor.appBodyDarkBg,
          barBackgroundColor: AppColor.appBodyDarkBg,
          primaryColor: AppColor.primaryColor,
          primaryContrastingColor: AppColor.primaryColor,
          textTheme: CupertinoTextThemeData(
            textStyle: const TextStyle(fontFamily: AppString.fontName),
            actionTextStyle: const TextStyle(fontFamily: AppString.fontName),
            tabLabelTextStyle: const TextStyle(fontFamily: AppString.fontName),
            navTitleTextStyle: const TextStyle(fontFamily: AppString.fontName),
            navLargeTitleTextStyle:
                const TextStyle(fontFamily: AppString.fontName),
            navActionTextStyle: const TextStyle(fontFamily: AppString.fontName),
            pickerTextStyle: const TextStyle(fontFamily: AppString.fontName),
            dateTimePickerTextStyle: TextStyle(
                fontFamily: AppString.fontName,
                color: AppColor.darkTextColor,
                fontSize: 18.0),
          )),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColor.darkTextColor,
          selectionColor: AppColor.secondaryColor),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColor.appBodyDarkBg,
          titleTextStyle: TextStyle(
              color: AppColor.darkTextColor, fontWeight: FontWeight.bold),
          elevation: 0.0),
      canvasColor: Colors.transparent,
      bottomSheetTheme:
          const BottomSheetThemeData(modalBackgroundColor: Colors.transparent),
      fontFamily: AppString.fontName,
      textTheme: const TextTheme(
          headline1: TextStyle(fontFamily: AppString.fontName),
          headline2: TextStyle(fontFamily: AppString.fontName),
          headline3: TextStyle(fontFamily: AppString.fontName),
          headline4: TextStyle(fontFamily: AppString.fontName),
          headline5: TextStyle(fontFamily: AppString.fontName),
          headline6: TextStyle(fontFamily: AppString.fontName),
          subtitle1: TextStyle(fontFamily: AppString.fontName),
          subtitle2: TextStyle(fontFamily: AppString.fontName),
          bodyText1: TextStyle(fontFamily: AppString.fontName),
          bodyText2: TextStyle(fontFamily: AppString.fontName),
          caption: TextStyle(fontFamily: AppString.fontName),
          button: TextStyle(fontFamily: AppString.fontName),
          overline: TextStyle(fontFamily: AppString.fontName)));

  static var deviceOrientation = SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  static var hideStatusBar =
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  static var showStatusBar = SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
      
  static const lightStatusBarTheme = SystemUiOverlayStyle(
      statusBarColor: AppColor.appBodyLightBg,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark);

  static const darkStatusBarTheme = SystemUiOverlayStyle(
      statusBarColor: AppColor.appBodyDarkBg,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light);
}
