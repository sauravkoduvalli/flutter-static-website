import 'package:flutter/material.dart';
import 'package:flutter_static_website/utils/size_config.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ScreenTypeLayout.builder(
        mobile: _mobileLayout,
        desktop: _desktopLayout,
        tablet: _tabletLayout,
      ),
    );
  }

  Widget _mobileLayout(BuildContext context) {
    return SizedBox(
      height: MyMediaQuery.screenWidth(context),
      child: const Row(
        children: [Text("mob")],
      ),
    );
  }

  Widget _tabletLayout(BuildContext context) {
    return SizedBox(
      height: MyMediaQuery.screenWidth(context),
      child: const Row(
        children: [Text("tab")],
      ),
    );
  }

  Widget _desktopLayout(BuildContext context) {
    return SizedBox(
      height: MyMediaQuery.screenWidth(context),
      child: const Row(
        children: [Text("desk")],
      ),
    );
  }
}
