

import 'package:flutter/material.dart';

final lightTheme = getLightTheme();
final darkTheme = getDarkTheme();
  const black = Color(0xFF13131A);
  const white = Color(0xFFF0F0F5);
  const appFont = 'Cairo';
  final borderRadius = BorderRadius.circular(8) ;
  final filledButtonTheme = FilledButtonThemeData(style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:borderRadius ))));

  const colorLightScheme = ColorScheme.light(onPrimary: black,background: white,primaryContainer: Colors.white70);
  const colorDarkScheme =  ColorScheme.dark(onPrimary: white,background: black,primaryContainer: Color.fromARGB(33, 20, 20, 20));

  ThemeData getLightTheme(){
    return ThemeData(colorScheme: colorLightScheme,fontFamily: appFont,useMaterial3: true,brightness: Brightness.light,scaffoldBackgroundColor: white,filledButtonTheme: filledButtonTheme,);
  }
  ThemeData getDarkTheme(){
    return ThemeData(colorScheme: colorDarkScheme,fontFamily: appFont, useMaterial3: true,brightness: Brightness.dark,scaffoldBackgroundColor: black,filledButtonTheme: filledButtonTheme);

  }