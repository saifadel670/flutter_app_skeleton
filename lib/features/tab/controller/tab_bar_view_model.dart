import 'dart:io';
import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../resources/app_string.dart';
import '../../../shared/router/app_router_settings.dart';
import '../../../shared/widget/text_widget.dart';

class TabBarController extends GetxController {
  /// CLASS PROPERTY
  late RxInt tabIndex;
  late AppRouteSetting routeSetting;
  late RxList<GlobalKey<NavigatorState>> tabNavigationKeyList;

  /// INIT
  static final TabBarController instance = Get.find();

  @override
  void onInit() {
    routeSetting = AppRouteSetting();
    tabIndex = 0.obs;
    tabNavigationKeyList = [
      GlobalKey<NavigatorState>(),
      GlobalKey<NavigatorState>(),
      GlobalKey<NavigatorState>(),
      GlobalKey<NavigatorState>()
    ].obs;
    super.onInit();
  }

  @override
  void dispose() {
    tabIndex.close();
    super.dispose();
  }

  /// UI CONDITIONAL STATEMENT
  bool canPop() => tabNavigationKeyList[tabIndex.value].currentState!.canPop();

  /// UI INTERACTION STATEMENT
  void changeTabIndex(int? index) {
    if (index != null && index != tabIndex.value) {
      tabIndex(index);
    }
  }

  void popScreen() {
    if (tabNavigationKeyList[tabIndex.value].currentState!.canPop()) {
      // add functionalities before navigate
    } else {
      appClosingDialog();
    }
  }

  void appClosingDialog() {
    showDialog(
      context: tabNavigationKeyList[tabIndex.value].currentContext!,
      builder: (context) => CupertinoAlertDialog(
        content: const TitleText(text: AppString.closingDialogTitle),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: ButtonText(text: AppString.no),
          ),
          TextButton(
            onPressed: () => exit(0),
            child: ButtonText(text: AppString.yes),
          ),
        ],
      ),
    );
  }

  /// FUNCTIONAL STATEMENT

  /// API FUNCTION

}
