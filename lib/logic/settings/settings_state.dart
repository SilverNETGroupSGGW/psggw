part of 'settings_cubit.dart';

@freezed
class SettingsState extends HiveObject with _$SettingsState {
  SettingsState._();

  @HiveType(
    typeId: HiveTypeIds.settingsState,
    adapterName: "SettingsStateAdapter",
  )
  factory SettingsState({
    @Default(ThemeMode.system) @HiveField(0) ThemeMode themeMode,
    @Default(ThemeType.custom) @HiveField(4) ThemeType themeType,
    @Default(true) @HiveField(1) bool isFirstRun,
    @Default(false) @HiveField(2) bool isDebugMode,
    @Default(Colors.red) @HiveField(3) Color themeColor,
    @Default(false) @HiveField(5) bool isFabHidden,
  }) = _SettingsState;
}
