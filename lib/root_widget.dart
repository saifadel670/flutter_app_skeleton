
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'features/splash/splash_screen.dart';
import 'resources/app_string.dart';
import 'shared/router/app_router_settings.dart';
import 'shared/theme_controller/theme_controller.dart';


class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return Obx(() => MaterialApp(
        navigatorKey: Get.key,
        title: AppString.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeController.instance.appTheme(),
        // initialRoute: AppRouter.TAB_BAR,
        onGenerateRoute: (settings) =>
            AppRouteSetting.getAppOnGenerateRoute(settings),
        home: const SplashScreen()
    ));
  }
}