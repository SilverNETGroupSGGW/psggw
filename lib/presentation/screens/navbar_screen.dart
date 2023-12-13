import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/presentation/screens/timeline_screen.dart';

class NavBarScreen extends StatefulWidget {
  NavBarScreen({super.key, required this.index});
  final int index;
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  @override
  void initState() {
    selectedIndex = widget.index;
    super.initState();
  }

  late int selectedIndex;

  @override
  Widget build(BuildContext context) {
    bool isTimeline = selectedIndex == 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(isTimeline ? 'timeline'.tr() : 'map'.tr()),
        actions: [
          SettingsButton(),
        ],
      ),
      body: isTimeline ? Timeline() : Placeholder(),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(isTimeline ? Icons.dashboard : Icons.dashboard_outlined),
            label: 'timeline'.tr(),
          ),
          NavigationDestination(
            icon: Icon(isTimeline ? Icons.map_outlined : Icons.map),
            label: 'map'.tr(),
          ),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/settings',
        );
      },
      icon: Icon(Icons.settings),
    );
  }
}
