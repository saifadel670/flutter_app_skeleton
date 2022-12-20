import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_size.dart';
import '../theme_controller/theme_controller.dart';

class LargeTitle extends StatelessWidget {
  const LargeTitle(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: SizeRatio.largeTitle,
            color: textColor ?? themeViewModel.titleTextColor()),
      );
    });
  }
}

class LargeSubTitle extends StatelessWidget {
  const LargeSubTitle(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: SizeRatio.largeSubTitle,
            color: textColor ?? themeViewModel.titleTextColor()),
      );
    });
  }
}

class TitleText extends StatelessWidget {
  const TitleText(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor,
      this.overflow})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: SizeRatio.title,
            overflow: overflow,
            color: textColor ?? themeViewModel.titleTextColor()),
      );
    });
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: SizeRatio.title,
            color: textColor ?? themeViewModel.buttonTextColor()),
      );
    });
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: SizeRatio.subTitle,
            color: textColor ?? themeViewModel.titleSubTextColor()),
      );
    });
  }
}

class BodyText extends StatelessWidget {
  const BodyText(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor,
      this.overflow,
      this.maxLine})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;
  final TextOverflow? overflow;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLine,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: SizeRatio.subTitle,
            color: textColor ?? themeViewModel.titleTextColor()),
      );
    });
  }
}

class BoldText extends StatelessWidget {
  const BoldText(
      {Key? key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.textColor,
      this.fontSize})
      : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? SizeRatio.title,
            color: textColor ?? themeViewModel.titleTextColor()),
      );
    });
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.left,
    this.textColor,
  }) : super(key: key);
  final String text;
  final TextAlign textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: SizeRatio.label,
            color: textColor ?? themeViewModel.titleTextColor()),
      );
    });
  }
}
