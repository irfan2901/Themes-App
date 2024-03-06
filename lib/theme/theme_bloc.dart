import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../preferences/shared_preferences.dart';
import '../preferences/theme_preferences.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ChangeThemeEvent>((event, emit) {
      SharedPref.setThemeId(value: event.name);
      emit(ThemeLoaded(themeData: appThemeData[event.name]!));
    });

    on<ChangedThemeLoadingEvent>(
      (event, emit) {
        SharedPref.getThemeId().then((value) => (value) {
              add(ChangedThemeLoadedEvent(name: value));
            });
      },
    );

    on<ChangedThemeLoadedEvent>(
      (event, emit) {
        emit(ChangedThemeLoaded(name: event.name));
      },
    );
  }
}
