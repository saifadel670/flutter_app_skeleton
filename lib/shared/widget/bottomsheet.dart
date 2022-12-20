import 'package:flutter/Material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../resources/app_color.dart';
import '../../resources/app_size.dart';
import '../theme_controller/theme_controller.dart';
import 'text_widget.dart';

void bottomSheet(
    {required Widget content,
    String? headerText,
    Widget? topHeader,
    bool? isScrolled,
    double? height}) {
  showModalBottomSheet(
      barrierColor: AppColor.primaryColor.withOpacity(0.4),
      isScrollControlled: isScrolled ?? true,
      context: Get.context!,
      builder: (_) => Obx(() => Material(
            color: ThemeController.instance.cardBgColor(),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(SizeRatio.borderRadius),
              topRight: Radius.circular(SizeRatio.borderRadius),
            ),
            child: Container(
              height: MediaQuery.of(Get.context!).size.height * (height ?? 0.7),
              decoration: BoxDecoration(
                  color: ThemeController.instance.pageBgColor(),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(dynamicSize(SizeRatio.sevenXSize)),
                    topRight:
                        Radius.circular(dynamicSize(SizeRatio.sevenXSize)),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///Header
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeRatio.cardPadding,
                      vertical: topHeader != null
                          ? SizeRatio.cardPadding
                          : (SizeRatio.cardPadding / 2),
                    ),
                    child: topHeader ??
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (headerText != null)
                              BoldText(
                                  text: headerText,
                                  textColor: ThemeController.instance
                                      .titleTextColor()),
                            const Spacer(),
                            IconButton(
                              icon: Icon(LineAwesomeIcons.times,
                                  color: AppColor.secondaryColor,
                                  size: SizeRatio.bottomsheetTitleIconSize),
                              onPressed: () => Navigator.pop(Get.context!),
                            )
                          ],
                        ),
                  ),

                  ///Divider
                  Divider(
                      color: ThemeController.instance.textFieldFillColor(),
                      height: 0.0),

                  ///Content
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(SizeRatio.cardPadding),
                      child: content,
                    ),
                  ),
                ],
              ),
            ),
          )));
}
