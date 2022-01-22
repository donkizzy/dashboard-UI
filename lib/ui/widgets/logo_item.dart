
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class LogoItem extends StatelessWidget {
  const LogoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
      builder: (BuildContext context, AdaptiveThemeMode value, Widget? child) {
        return  Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              value.isLight ? 'assets/logo.png' : 'assets/logo_dark.png',
              height: 48,
            )) ;
      },
    );
  }
}
