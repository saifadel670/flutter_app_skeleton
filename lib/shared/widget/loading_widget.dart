import 'package:flutter/cupertino.dart';

import '../theme_controller/theme_controller.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CupertinoActivityIndicator(color: ThemeController.instance.loaderColor()));
  }
}
