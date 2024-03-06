import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/home_page.dart';
import 'package:themes_app/preferences/shared_preferences.dart';
import 'package:themes_app/preferences/theme_preferences.dart';
import 'package:themes_app/theme/theme_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String theme = await SharedPref.getThemeId() ?? ThemePref.lightTheme;
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: MyApp(
        theme: theme,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final String theme;

  const MyApp({super.key, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if (state is ThemeLoaded) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state.themeData,
            home: const HomePage(),
          );
        }
        if (state is ChangedThemeLoaded) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: _switchTheme(theme),
            home: const HomePage(),
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: _switchTheme(theme),
          home: const HomePage(),
        );
      },
    );
  }

  ThemeData _switchTheme(String name) {
    switch (name) {
      case ThemePref.lightTheme:
        {
          return appThemeData[ThemePref.lightTheme]!;
        }
      case ThemePref.darkTheme:
        {
          return appThemeData[ThemePref.darkTheme]!;
        }
      case ThemePref.deepOrangeThemeLight:
        {
          return appThemeData[ThemePref.deepOrangeThemeLight]!;
        }
      case ThemePref.deepPurpleThemeLight:
        {
          return appThemeData[ThemePref.deepPurpleThemeLight]!;
        }
      default:
        {
          return appThemeData[ThemePref.lightTheme]!;
        }
    }
  }
}
