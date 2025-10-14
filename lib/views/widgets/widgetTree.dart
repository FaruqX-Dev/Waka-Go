// ignore_for_file: prefer_const_constructors, unused_import, duplicate_import, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newerapp/theme/theme_mode.dart';
import 'package:newerapp/views/pages/accountpage.dart';
import 'package:newerapp/views/pages/home_page.dart';
import 'package:newerapp/views/pages/orderpage.dart';
import 'package:flutter/material.dart';
import 'package:newerapp/data/notifiers.dart';
import 'package:newerapp/views/widgets/navbarwidget.dart';
import 'package:newerapp/views/pages/settings_page.dart';

List<Widget> pages = [HomePage(),Orderpage(),Accountpage() ];


class Widgettree extends ConsumerWidget {
  const Widgettree({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary
          ),
       drawer: const SettingsDrawer(),
      bottomNavigationBar: Navbarwidget(),
      body:ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages.elementAt(selectedPage);
          },
        ), 
    );
  }
}