// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:waka_go/theme/theme_mode.dart';
import 'package:waka_go/views/pages/welcome_page.dart';
import 'package:waka_go/data/notifiers.dart';
import 'package:waka_go/views/pages/settings_page.dart';
import 'package:waka_go/views/pages/accountpage.dart';
import 'package:waka_go/views/pages/orderPage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'WAKA GO',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      theme:ref.watch(themeModeToggleProvider),
    );
  }
}
