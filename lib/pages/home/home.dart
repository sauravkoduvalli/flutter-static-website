import 'package:flutter/material.dart';
import 'package:flutter_static_website/utils/constants.dart';
import 'package:flutter_static_website/utils/size_config.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: _mobileLayout,
      desktop: _desktopLayout,
      tablet: _tabletLayout,
    );
  }

  Widget _mobileLayout(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          width: MyMediaQuery.screenWidth(context),
          height: MyMediaQuery.screenHeight(context) / 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
              const SizedBox(
                width: 80,
                child: Image(
                  image: AssetImage(logo),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabletLayout(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MyMediaQuery.screenWidth(context),
        child: const Row(
          children: [Text("tab")],
        ),
      ),
    );
  }

  Widget _desktopLayout(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        width: MyMediaQuery.screenWidth(context),
        height: MyMediaQuery.screenHeight(context) / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 80,
              child: Image(
                image: AssetImage(logo),
                fit: BoxFit.contain,
              ),
            ),
            Row(
              children: [
                _navButton(
                  context,
                  () {
                    print('homr button pressed');
                  },
                  'HOME',
                  Theme.of(context).textTheme.labelMedium,
                ),
                _navButton(
                  context,
                  () {
                    print('pricing button pressed');
                  },
                  'PRICING',
                  Theme.of(context).textTheme.labelMedium,
                ),
                _navButton(
                  context,
                  () {
                    print('about button pressed');
                  },
                  'ABOUT',
                  Theme.of(context).textTheme.labelMedium,
                ),
                _navButton(
                  context,
                  () {
                    print('feedback button pressed');
                  },
                  'FEEDBACK',
                  Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                print('request demo btn clicked');
              },
              style: const ButtonStyle(
                side: MaterialStatePropertyAll(
                  BorderSide(color: Colors.deepOrange),
                ),
              ),
              child: Text(
                "REQUEST A DEMO",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton _navButton(
    BuildContext context,
    Function()? onPressed,
    String buttonlabel,
    TextStyle? labelStyle,
  ) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonlabel,
        style: labelStyle,
      ),
    );
  }
}
