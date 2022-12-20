import 'package:flutter/material.dart';

import '../../../shared/widget/app_scaffold.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(body: Center(child: Text("More"),));
  }
}