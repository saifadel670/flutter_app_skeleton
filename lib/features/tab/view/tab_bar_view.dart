import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../resources/app_icon.dart';
import '../../../resources/app_color.dart';
import '../../../resources/app_size.dart';
import '../../../resources/app_string.dart';
import '../../../shared/widget/app_scaffold.dart';
import '../controller/tab_bar_view_model.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabBarController>(
        init: TabBarController(),
        autoRemove: false,
        builder: (controller) {
          return WillPopScope(
            onWillPop: () async {
              controller.popScreen();
              return false;
            },
            child: Obx(() {
              return AppScaffold(
                appPadding: 0,
                color: AppColor.primaryColor,
                body: SafeArea(
                  child: IndexedStack(
                    index: controller.tabIndex.value,
                    children: controller.routeSetting.getTabBarChild,
                  ),
                ),
                bottom: BottomNavigationBar(
                    onTap: (index) => controller.changeTabIndex(index),
                    elevation: 0,
                    currentIndex: controller.tabIndex.value,
                    type: BottomNavigationBarType.fixed,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(
                            AppIcon.homeTabSelectedIcon,
                            color: AppColor.tabBarIconUnselectedColor,
                            size: SizeRatio.tabIconSize,
                          ),
                          activeIcon: Icon(
                            AppIcon.homeTabSelectedIcon,
                            color: AppColor.tabBarIconSelectedColor,
                            size: SizeRatio.tabIconSize,
                          ),
                          label: AppString.homeTab),
                      BottomNavigationBarItem(
                          icon: Icon(
                            AppIcon.moreTabSelectedIcon,
                            color: AppColor.tabBarIconUnselectedColor,
                            size: SizeRatio.tabIconSize,
                          ),
                          activeIcon: Icon(
                            AppIcon.moreTabSelectedIcon,
                            color: AppColor.tabBarIconSelectedColor,
                            size: SizeRatio.tabIconSize,
                          ),
                          label: AppString.moreTab)
                    ]),
              );
            }),
          );
        });
  }
}
