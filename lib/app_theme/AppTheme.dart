import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static const Color _lightPrimaryColor = Colors.white;
  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _lightPrimaryVariantColor = Color(0xFFF5F5F5);
  static const Color _lightSecondaryColor = Colors.yellow;


  static final TextStyle _lightBodyText1Style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    letterSpacing: 1.0,
  );
  static final TextStyle _lightBodyText2Style = TextStyle(
    fontSize: 15.0,
    letterSpacing: 0.5,
  );
  static final TextStyle _lightHeadline6Style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    letterSpacing: 0.5,
  );


  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryVariantColor,
    iconTheme: IconThemeData(
      color: _lightOnPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: _lightPrimaryColor,
      iconTheme: IconThemeData(color: _lightOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      primaryVariant: _lightPrimaryVariantColor,
      secondary: _lightSecondaryColor,
    ),
    textTheme: TextTheme(
      bodyText1: _lightBodyText1Style,
      bodyText2: _lightBodyText2Style,
      headline6: _lightHeadline6Style,
    ),
  );
}