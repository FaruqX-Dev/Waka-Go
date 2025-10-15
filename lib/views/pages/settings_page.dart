// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:waka_go/theme/theme_mode.dart';
import 'package:waka_go/views/pages/home_page.dart';

class SettingsDrawer extends ConsumerWidget {
  const SettingsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleTheme = ref.watch(themeModeToggleProvider);
    final isdarkmodeOn = ref.watch(isThemeDarkModeProvider);

    return Drawer(
      backgroundColor: isdarkmodeOn ? Colors.grey.shade900 : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 50),

            ListTile(
              title: Text('Favourite routes', style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.favorite_outline_sharp),
            ),

            SizedBox(width: 20),
            ListTile(
              title: Text(
                isdarkmodeOn ? 'Dark mode' : 'Light mode',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Switch(
                value: isdarkmodeOn,
                activeColor: Colors.blueAccent,
                onChanged: (value) {
                  ref.watch(themeModeToggleProvider.notifier).state =
                      toggleTheme == darkMode ? lightMode : darkMode;
                  ref.watch(isThemeDarkModeProvider.notifier).state =
                      !isdarkmodeOn;
                },
              ),
            ),

            ListTile(
              trailing: Icon(Icons.privacy_tip_outlined),
              title: Text(
                'Privacy and Security',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              trailing: Icon(Icons.info_outline),
              title: Text('About Us', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
