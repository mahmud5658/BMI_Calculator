import 'package:bmi/config/color.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    background: lightBgColor,
    primary: lightPrimaryColor,
    onBackground: lightFontColor,
    primaryContainer: lightDivColor,
    onPrimaryContainer: lightFontColor,
    onSecondaryContainer: lightLabelColor,
  )
);

var darkTheme = ThemeData(
  useMaterial3: true,
   colorScheme: const ColorScheme.dark(
    background: darkBgColor,
    primary: darkPrimaryColor,
    onBackground: darkFontColor,
    primaryContainer: darkDivColor,
    onPrimaryContainer: darkFontColor,
    onSecondaryContainer: darkLabelColor,
  )
);
