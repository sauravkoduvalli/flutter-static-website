import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 80,
          child: Image(
            image: AssetImage(logo),
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: Row(
        children: [],
      ),
    );
  }
}
