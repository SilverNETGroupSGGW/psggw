import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/router.dart';

class CustomizationTile extends StatelessWidget {
  const CustomizationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('theme_screen'.tr()),
      subtitle: Text('theme_screen_desc'.tr()),
      onTap: () {
        Navigator.pushNamed(context, RouteNames.theme);
      },
    );
  }
}
