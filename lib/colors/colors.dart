import 'package:flutter/material.dart';

const MaterialColor darkblue =
    MaterialColor(_darkbluePrimaryValue, <int, Color>{
  50: Color(0xFFE3E4E7),
  100: Color(0xFFB9BDC3),
  200: Color(0xFF8A919C),
  300: Color(0xFF5B6474),
  400: Color(0xFF384356),
  500: Color(_darkbluePrimaryValue),
  600: Color(0xFF121E32),
  700: Color(0xFF0F192B),
  800: Color(0xFF0C1424),
  900: Color(0xFF060C17),
});
const int _darkbluePrimaryValue = 0xFF152238;

const MaterialColor darkblueAccent =
    MaterialColor(_darkblueAccentValue, <int, Color>{
  100: Color(0xFF5883FF),
  200: Color(_darkblueAccentValue),
  400: Color(0xFF003FF1),
  700: Color(0xFF0038D7),
});
const int _darkblueAccentValue = 0xFF255EFF;
