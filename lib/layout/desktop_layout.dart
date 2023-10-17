import 'package:flutter/material.dart';
import 'package:flutter_static_website/utils/size_config.dart';

import '../utils/constants.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
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

  Widget _navButton(
    BuildContext context,
    Function()? onPressed,
    String buttonlabel,
    TextStyle? labelStyle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonlabel,
          style: labelStyle,
        ),
      ),
    );
  }
}
