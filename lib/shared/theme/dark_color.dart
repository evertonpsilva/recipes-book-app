import 'package:flutter/material.dart';

const MaterialColor darkpalette = MaterialColor(_darkpalettePrimaryValue, <int, Color>{
  50: Color(0xFFE6E7E9),
  100: Color(0xFFC0C2C7),
  200: Color(0xFF979AA2),
  300: Color(0xFF6D727D),
  400: Color(0xFF4D5361),
  500: Color(_darkpalettePrimaryValue),
  600: Color(0xFF29303E),
  700: Color(0xFF232836),
  800: Color(0xFF1D222E),
  900: Color(0xFF12161F),
});
const int _darkpalettePrimaryValue = 0xFF2E3545;

const MaterialColor darkpaletteAccent = MaterialColor(_darkpaletteAccentValue, <int, Color>{
  100: Color(0xFF6392FF),
  200: Color(_darkpaletteAccentValue),
  400: Color(0xFF004BFC),
  700: Color(0xFF0044E2),
});
const int _darkpaletteAccentValue = 0xFF306EFF;