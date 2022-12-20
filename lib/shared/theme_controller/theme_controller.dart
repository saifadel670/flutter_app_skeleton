import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../../resources/app_color.dart';
import '../../resources/app_key.dart';
import '../../resources/app_theme.dart';

class ThemeController extends GetxController {
  static final ThemeController instance = Get.find();

  RxBool isLight = true.obs;
  RxBool isOnline = true.obs;

  @override
  void onInit() {
    super.onInit();
    isLight(GetStorage().read(isLightMode) ?? true);
  }

  Future<void> changeTheme(bool val) async {
    isLight(val);
    await GetStorage().write(isLightMode, isLight.value);
    update();
  }

  ThemeData appTheme() =>
      isLight.value ? AppTheme.lightThemeData : AppTheme.darkThemeData;

  appStatusBarTheme() => isLight.value
      ? AppTheme.lightStatusBarTheme
      : AppTheme.darkStatusBarTheme;

  Color titleTextColor() =>
      isLight.value ? AppColor.lightTextColor : AppColor.darkTextColor;
  Color titleSubTextColor() =>
      isLight.value ? AppColor.lightTextColor : AppColor.darkTextColor;
  Color hintTextColor() =>
      isLight.value ? AppColor.lightHintTextColor : AppColor.darkHintTextColor;

  Color buttonTextColor() =>
      isLight.value ? AppColor.lightTextColor : AppColor.darkTextColor;

  Color boarderColor() =>
      isLight.value ? AppColor.lightBoarderColor : AppColor.darkBoarderColor;

  Color lineSeparatorColor() => isLight.value
      ? AppColor.lightLineSeparatorColor
      : AppColor.darkLineSeparatorColor;

  Color pageBgColor() =>
      isLight.value ? AppColor.appBodyLightBg : AppColor.appBodyDarkBg;

  Color navSelectedColor() =>
      isLight.value ? AppColor.primaryColor : AppColor.secondaryColor;

  Color textFieldFillColor() => isLight.value
      ? AppColor.lightTextFieldFillColor
      : AppColor.darkTextFieldFillColor;

  Color textFieldPrefixIconColor() => isLight.value
      ? AppColor.lightPrefixIconColor
      : AppColor.darkPrefixIconColor;

  Color searchFillColor() => isLight.value
      ? AppColor.lightSearchFieldFillColor
      : AppColor.darkSearchFieldFillColor;

  Color cardBgColor() =>
      isLight.value ? AppColor.lightCardColor : AppColor.darkCardColor;

  Color cardShadowColor() => isLight.value
      ? AppColor.lightCardShadowColor
      : AppColor.darkCardShadowColor;

  Color bottomNavBgColor() => isLight.value
      ? AppColor.lightBottomNavBgColor
      : AppColor.darkBottomNavBgColor;

  Color textFieldHintColor() => isLight.value
      ? AppColor.lightTextFieldHintColor
      : AppColor.darkTextFieldHintColor;

  Color warningColor() =>
      isLight.value ? AppColor.lightWarningColor : AppColor.darkWarningColor;

  Color loaderColor() =>
      isLight.value ? AppColor.lightLoaderColor : AppColor.darkLoaderColor;
}
