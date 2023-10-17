import 'package:flutter/material.dart';
import 'package:flutter_static_website/utils/size_config.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MyMediaQuery.screenWidth(context),
        child: const Row(
          children: [Text("tab")],
        ),
      ),
    );
  }
}