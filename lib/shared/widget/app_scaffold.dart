import 'package:flutter/Material.dart';

import '../../resources/app_color.dart';
import '../../resources/app_size.dart';
import 'loading_widget.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {Key? key,
      this.appBar,
      required this.body,
      this.bottom,
      this.isLoading = false,
      this.color = AppColor.primaryColor,
      this.appPadding})
      : super(key: key);
  final AppBar? appBar;
  final Widget body;
  final Widget? bottom;
  final Color color;
  final bool isLoading;
  final double? appPadding;

  @override
  Widget build(BuildContext context) {
    isLoading ? FocusManager.instance.primaryFocus?.unfocus() : null;
    return Stack(
      children: [
        Scaffold(
            backgroundColor: color,
            appBar: appBar,
            body: SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(appPadding ?? SizeRatio.appPadding),
                  child: body),
            ),
            bottomNavigationBar: bottom),
        if (isLoading)
          const Opacity(
            opacity: 0.2,
            child: ModalBarrier(dismissible: false, color: Colors.black),
          ),
        if (isLoading) const LoadingWidget(),
      ],
    );
  }
}
