import 'package:flutter/material.dart';

class MyTHemeData{
  static const Color colorBlack= Color(0xff707070);
  static const Color colorgolde= Color(0xffB7935F);
  static const Color primarydark=Color(0xff141A2E);
  static const Color secondarydark=Color(0xffFACC1D);

  static const Color colorwhit= Colors.white;

  static ThemeData lightTheme=ThemeData(
    primaryColor: colorgolde,
      colorScheme: ColorScheme(
        brightness:Brightness.light ,
        primary: colorgolde,
        onPrimary: colorwhit,
        secondary: colorBlack,
        onSecondary: colorwhit,
        error: Colors.red,
        onError: colorwhit,
        background: Colors.transparent,
        onBackground: colorBlack,
        surface: Colors.grey,
        onSurface: colorwhit,
      ),

      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: colorBlack)
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorgolde,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
      textTheme: const TextTheme(
      headline1: TextStyle(
      fontSize: 30,
        fontWeight: FontWeight.bold,
        color: colorBlack,
  ),
        subtitle1: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
          subtitle2: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black
      )
  ),

  );

  static ThemeData darkTheme=ThemeData(
    primaryColor: primarydark,
    colorScheme: ColorScheme(
      brightness:Brightness.dark ,
      primary: primarydark,
      onPrimary: colorwhit,
      secondary: secondarydark,
      onSecondary: colorwhit,
      error: Colors.red,
      onError: colorwhit,
      background: Colors.transparent,
      onBackground: secondarydark,
      surface: Colors.grey,
      onSurface: colorwhit,
    ),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: colorwhit)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primarydark,
      selectedItemColor: secondarydark,
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: colorwhit,
        ),
        subtitle1: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: secondarydark
        ),
        subtitle2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white
      )
    ),

  );

}