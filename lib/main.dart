import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerLogicDataAdapters();
  registerDataAdapters();
  await Hive.openBox(hiveBoxName);
  await EasyLocalization.ensureInitialized();
  SettingsCubit settings = SettingsCubit()..loadSettings();

  runApp(
    EasyLocalization(
      child: MainApp(settings: settings),
      supportedLocales: supportedLocale.map((e) => e.locale).toList(),
      path: 'assets/translations',
      fallbackLocale: fallbackLocale,
    ),
  );
}

class MainApp extends StatefulWidget {
  final SettingsCubit settings;

  MainApp({super.key, required this.settings});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>.value(
      value: widget.settings,
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settings) {
          return DynamicColorBuilder(
            builder: (lightDynamic, darkDynamic) {
              return MaterialApp(
                title: appName,
                theme: settings.themeType == ThemeType.adaptive
                    ? ThemeData(colorScheme: lightDynamic)
                    : getTheme(settings.themeType, false, settings.themeColor),
                darkTheme: settings.themeType == ThemeType.adaptive
                    ? ThemeData(colorScheme: darkDynamic)
                    : getTheme(settings.themeType, true, settings.themeColor),
                themeMode: settings.themeMode,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                onGenerateRoute: _appRouter.onGenerateRoute,
                initialRoute: RouteNames.timeline,
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.settings.close();
    super.dispose();
  }
}
