import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

class AppColors {
  static const appBackroundColor = Color.fromARGB(255, 255, 223, 0);
}

//Theme : Dark Mode
ThemeData darkMode = ThemeData(
  useMaterial3: true,
 colorScheme: const ColorScheme.dark(
    surface: Color(0xFF121212), // cards or containers
    primary: Color(0xFF0A0A0A), // bg
    secondary: Color(0xFF1A1A1A),
    inversePrimary: Color(0xFFB0B0B0), 
    tertiary: const Color(0xFF00B0FF), //use for icons
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.white70,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);




//Theme: Light Mode
ThemeData lightMode = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    surface: Colors.white, // use for cards or containers
    primary: const Color(0xFFFAFAFA), //  try background
    secondary: const Color(0xFFF1F1F1), // subtle contrast
    inversePrimary: const Color(0xFF121212), //contrast
    tertiary: const Color(0xFF00B0FF),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.black87,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
);




//State provider to tole between Li and dark Mode

final themeModeToggleProvider = StateProvider((ref){
  return darkMode;
});

final isThemeDarkModeProvider = StateProvider((ref)=>true);
