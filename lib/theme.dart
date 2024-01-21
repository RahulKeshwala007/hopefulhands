import 'package:flutter/material.dart';
import 'package:hopefulllhands/constants.dart';

final ThemeData myTheme = ThemeData(
  useMaterial3: true,
  buttonTheme:ButtonThemeData(
    buttonColor: PrimaryColor,
    textTheme:ButtonTextTheme.primary,
    ),
  colorScheme: ColorScheme.light(
    background: BGcolor,

    primary: PrimaryColor,
    secondary: SecondaryColor,
  )
);