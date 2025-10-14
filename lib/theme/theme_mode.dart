import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

class AppColors {
  static const appBackroundColor = Color.fromARGB(255, 255, 223, 0);
}

//Theme : Dark Mode
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.blueAccent.shade700,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade900,
    inversePrimary: Colors.grey.shade300,
  ),
);




//Theme: Light Mode
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.blueAccent,
    primary: Colors.grey.shade100,
    secondary: Colors.grey.shade200,
    inversePrimary: Colors.grey.shade900,
  ),
);

//State provider to tole between Li and dark Mode

final themeModeToggleProvider = StateProvider((ref){
  return darkMode;
});

final isThemeDarkModeProvider = StateProvider((ref)=>true);
