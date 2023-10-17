import 'package:flutter/material.dart';
import 'package:flutter_static_website/layout/layout.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: const MobileLayout().build,
      tablet: const TabletLayout().build,
      desktop: const DesktopLayout().build,
    );
  }
}
