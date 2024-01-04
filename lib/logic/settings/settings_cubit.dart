import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/themes.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends Cubit<SettingsState> {
  static const _boxKey = "settings";
  final Box box = Hive.box(hiveBoxName);
  SettingsCubit() : super(SettingsState());

  @override
  void onChange(Change<SettingsState> change) {
    super.onChange(change);
    box.put(_boxKey, change.nextState);
  }

  loadSettings() {
    try {
      final SettingsState loadedSettingsState = box.get(_boxKey) ?? state;
      emit(loadedSettingsState);
    } catch (e) {
      if (kDebugMode) {
        print("Could not load settings");
      }
      // TODO: handle exception
    }
  }

  changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(
      themeMode: themeMode,
    ));
  }

  changeThemeType(ThemeType themeType) {
    emit(state.copyWith(
      themeType: themeType,
    ));
  }

  changeThemeColor(Color color) {
    emit(state.copyWith(
      themeColor: color,
    ));
  }

  toggleDebugMode() {
    emit(state.copyWith(
      isDebugMode: state.isDebugMode,
    ));
  }

  completeFirstRun() {
    emit(state.copyWith(
      isFirstRun: false,
    ));
  }
}
