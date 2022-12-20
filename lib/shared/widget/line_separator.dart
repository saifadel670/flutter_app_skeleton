import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../../resources/app_size.dart';
import '../theme_controller/theme_controller.dart';

class LineSeparator extends StatelessWidget {
  LineSeparator({super.key});
  final ThemeController themeViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: SizeRatio.zero,
      color: themeViewModel.lineSeparatorColor(),
    );
  }
}
