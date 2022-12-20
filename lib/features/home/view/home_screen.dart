import 'package:flutter/cupertino.dart';

import '../../../shared/widget/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        isLoading: true,
        body: Center(
          child: Text("Home"),
        ));
  }
}
