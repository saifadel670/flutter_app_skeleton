import 'package:flutter/Material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../shared/theme_controller/theme_controller.dart';
import 'app_size.dart';
import 'app_string.dart';

class AppDecoration {
  InputDecoration searchFieldDecoration =  InputDecoration(
    hintText: AppString.search,
    filled: true,
    contentPadding: EdgeInsets.symmetric(vertical: 8),
    fillColor: ThemeController.instance.textFieldFillColor(),
    border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    prefixIcon: Icon(LineAwesomeIcons.search,
        color: ThemeController.instance.textFieldPrefixIconColor(), size: SizeRatio.prefixIconSize),
    hintStyle:
        TextStyle(color: ThemeController.instance.hintTextColor(), fontSize: SizeRatio.subTitle),
  );
}
