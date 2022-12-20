import 'package:flutter/Material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../resources/app_size.dart';
import '../theme_controller/theme_controller.dart';

class NormalCard extends StatelessWidget {
  const NormalCard({Key? key, required this.child,this.bgColor})
      : super(key: key);
  final Widget child;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Material(
      color: bgColor??ThemeController.instance.cardBgColor(),
      borderRadius: const BorderRadius.all(Radius.circular(SizeRatio.borderRadius)),
      shadowColor: ThemeController.instance.cardShadowColor(),
      elevation: 1.0,
      child: Container(
        padding: EdgeInsets.all(SizeRatio.cardPadding),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(SizeRatio.borderRadius)),
        ),
        child: child,
      ),
    ));
  }
}
