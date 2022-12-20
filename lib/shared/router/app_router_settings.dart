import 'package:flutter/cupertino.dart';
import 'app_router.dart';
import '../../features/home/view/home_screen.dart';
import '../../features/more/view/more_screen.dart';
import '../../features/tab/controller/tab_bar_view_model.dart';
import '../../features/tab/view/tab_bar_view.dart';

class AppRouteSetting {
  List<Widget> get getTabBarChild => [getHomeTabView, getMoreTabView];

  CupertinoTabView get getHomeTabView => CupertinoTabView(
        navigatorKey: TabBarController.instance.tabNavigationKeyList.first,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AppRouter.INITIALIZER:
              return CupertinoPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                  settings: settings);

            default:
              return getChildTabView(settings);
          }
        },
      );

  CupertinoTabView get getMoreTabView => CupertinoTabView(
        navigatorKey: TabBarController.instance.tabNavigationKeyList.last,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AppRouter.INITIALIZER:
              return CupertinoPageRoute(
                  builder: (context) {
                    return const MoreScreen();
                  },
                  settings: settings);

            default:
              return getChildTabView(settings);
          }
        },
      );

  static Route<dynamic>? getAppOnGenerateRoute(RouteSettings settings) {
    // var arguments = settings.arguments;
    switch (settings.name) {
      case AppRouter.TAB_BAR:
        return CupertinoPageRoute(
            builder: (_) => const TabBarScreen(), settings: settings);
    }
    return null;
  }

  CupertinoPageRoute? getChildTabView(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.INITIALIZER:
        return CupertinoPageRoute(
            builder: (_) => const HomeScreen(), settings: settings);

      case AppRouter.CONTACT:
        return CupertinoPageRoute(
            builder: (_) => const MoreScreen(), settings: settings);
    }
    return null;
  }
}
