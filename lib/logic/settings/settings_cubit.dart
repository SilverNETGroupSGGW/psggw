import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/themes.dart';

part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  static const _boxKey = "settings";
  final Box box = Hive.box(hiveBoxName);
  SettingsCubit() : super(SettingsState());

  @override
  void onChange(Change<SettingsState> change) {
    super.onChange(change);
    box.put(_boxKey, change.nextState);
  }

  void loadSettings() {
    try {
      final SettingsState loadedSettingsState =
          box.get(_boxKey) as SettingsState? ?? state;
      emit(loadedSettingsState);
    } catch (e) {
      if (kDebugMode) {
        print("Could not load settings");
      }
      // TODO: handle exception
    }
  }

  void toggleAutoThemeMode() {
    if (state.themeMode == ThemeMode.system) {
      final brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;

      if (brightness == Brightness.dark) {
        emit(
          state.copyWith(
            themeMode: ThemeMode.dark,
          ),
        );
      } else {
        emit(
          state.copyWith(
            themeMode: ThemeMode.light,
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          themeMode: ThemeMode.system,
        ),
      );
    }
  }

  void toggleThemeMode() {
    emit(
      state.copyWith(
        themeMode: state.themeMode == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light,
      ),
    );
  }

  void changeThemeMode(ThemeMode themeMode) {
    emit(
      state.copyWith(
        themeMode: themeMode,
      ),
    );
  }

  void toggleHideFab() {
    emit(
      state.copyWith(
        isFabHidden: !state.isFabHidden,
      ),
    );
  }

  void changeThemeType(ThemeType themeType) {
    emit(
      state.copyWith(
        themeType: themeType,
      ),
    );
  }

  void changeThemeColor(Color color) {
    emit(
      state.copyWith(
        themeColor: color,
      ),
    );
  }

  bool toggleDebugMode() {
    emit(
      state.copyWith(
        isDebugMode: !state.isDebugMode,
      ),
    );
    return state.isDebugMode;
  }

  void completeFirstRun() {
    emit(
      state.copyWith(
        isFirstRun: false,
      ),
    );
  }
}
