import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/mockup_lesson_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_picker.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/widgets/category_label.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('customization'.tr()),
            expandedHeight: 196,
          ),
          BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CategoryLabel(text: 'preview'.tr()),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Transform.scale(
                        scale: 0.8,
                        child: const Column(
                          children: [
                            MockupLessonTile(),
                            MockupLessonTile(),
                          ],
                        ),
                      ),
                    ),
                    CategoryLabel(text: 'theme'.tr()),
                    const AutoThemeModeTile(),
                    const DarkThemeModeTile(),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ThemePicker(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
