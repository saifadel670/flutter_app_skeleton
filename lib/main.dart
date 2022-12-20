import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';

import 'resources/app_theme.dart';
import 'root_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  AppTheme.deviceOrientation;
  runApp(const RootWidget());
}
