import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/screens/sign_in.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({Key? key, this.savedThemeMode}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        backgroundColor: alabasterWhite,
        canvasColor: alabasterWhite,
        cardColor: alabasterWhite,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: sharkBlack,
          ),
        ),
        dividerColor: galleryGrey

      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: sharkBlack,
          canvasColor: woodSmokeBlack,
          cardColor: sharkBlack,
          textTheme: TextTheme(
            headline1: TextStyle(
              color: alabasterWhite,
            ),
          ),
        dividerColor: lightSharkBlack

      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: SignIn(),
      ),
    );
  }
}

