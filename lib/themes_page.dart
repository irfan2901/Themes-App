import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/preferences/theme_preferences.dart';
import 'package:themes_app/theme/theme_bloc.dart';

class ThemesPage extends StatelessWidget {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Preferences'),
      ),
      body: ListView.builder(
        itemCount: ThemePref.themePrefList.length,
        itemBuilder: (BuildContext context, int index) {
          final selectedTheme = ThemePref.themePrefList[index];
          return InkWell(
            onTap: () {
              BlocProvider.of<ThemeBloc>(context)
                  .add(ChangeThemeEvent(name: selectedTheme));
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: appThemeData[selectedTheme]!.primaryColor),
              child: Center(
                child: Text(
                  selectedTheme,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
