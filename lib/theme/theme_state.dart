part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ThemeLoaded extends ThemeState {
  final ThemeData themeData;

  ThemeLoaded({required this.themeData});
}

class ChangedThemeLoaded extends ThemeState {
  final String name;

  ChangedThemeLoaded({required this.name});
}