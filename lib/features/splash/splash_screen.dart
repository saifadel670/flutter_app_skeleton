import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lottie/lottie.dart';

import '../../shared/router/app_router.dart';
import '../../shared/theme_controller/theme_controller.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 2500)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, AppRouter.TAB_BAR, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeViewModel) {
      return Scaffold(
        body: Center(
          child: Lottie.asset('assets/lotties/splash_lottie.json',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth),
        ),
      );
    });
  }
}
