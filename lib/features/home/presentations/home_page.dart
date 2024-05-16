import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:city_savvy_admin_panel/features/home/presentations/views/desktop_view.dart';

class HomePage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout.builder(
        desktop: (context) => desktopView(context),
      ),
    );
  }
}
