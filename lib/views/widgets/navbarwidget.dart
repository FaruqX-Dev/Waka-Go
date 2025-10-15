// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:waka_go/data/notifiers.dart';
import 'package:flutter/material.dart';

class Navbarwidget extends StatelessWidget {
  const Navbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          indicatorColor: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.white,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.car_rental_outlined), label: 'Orders'),
            NavigationDestination(
                icon: Icon(
                  Icons.group_outlined,
                ),
                label: 'Account')
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
