part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ChangeThemeEvent extends ThemeEvent {
  final String name;

  ChangeThemeEvent({required this.name});
}

class ChangedThemeLoadingEvent extends ThemeEvent {}

class ChangedThemeLoadedEvent extends ThemeEvent {
  final String name;

  ChangedThemeLoadedEvent({required this.name});
}
