import 'package:flutter/material.dart';
import 'package:flutter_static_website/utils/theme/app_theme.dart';

import 'pages/pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().appTheme(),
      home: const HomePage(),
    );
  }


}