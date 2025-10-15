import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

class AppColors {
  static const appBackroundColor = Color.fromARGB(255, 255, 223, 0);
}

//Theme : Dark Mode
ThemeData darkMode = ThemeData(
  useMaterial3: true,
 colorScheme: const ColorScheme.dark(
    surface: Color(0xFF121212), // dark gray surface
    primary: Color(0xFF0A0A0A), // pure dark base
    secondary: Color(0xFF1A1A1A),
    primaryContainer: Color(0xFF1E1E1E), // card-like surface
    secondaryContainer: Color(0xFF2A2A2A),
    inversePrimary: Color(0xFFB0B0B0), 
    onPrimary: Colors.white, 
    onSurface: Colors.white,
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
    primaryContainer: const Color(0xFFE8E8E8), // used for secondary surfaces
    secondaryContainer: const Color(0xFFDADADA),
    inversePrimary: const Color(0xFF121212), // dark text for contrast
    onPrimary: Colors.black,
    onSurface: Colors.black87,
    // matching neon blue accent
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
