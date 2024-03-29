// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:med_g/assets/colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme() => ThemeData(
        fontFamily: 'Barlow',
        scaffoldBackgroundColor: AppColors.background,
        canvasColor: AppColors.background,
        textTheme:  TextTheme(
          headline1: headline1,
          headline2: headline2,
          headline3: headline3,
          headline4: headline4,
          headline5: headline5,
          headline6: headline6,
          bodyText1: bodyText1,
          // bodyText2: bodyText2,
          // button: bottonText,
        ),
        colorScheme:  ColorScheme(
          brightness: Brightness.light,
          background: AppColors.background,
          onBackground: AppColors.dark,
          surface: AppColors.background,
          onSurface: AppColors.white,
          error: AppColors.red,
          onError: AppColors.white,
          primary: AppColors.primary,
          onPrimary: AppColors.white,
          secondary: AppColors.secondary,
          onSecondary: AppColors.white,
        ),
        textSelectionTheme:  TextSelectionThemeData(
          cursorColor: AppColors.dark,
        ),
      );

  static  TextStyle headline1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.dark,
    fontFamily: 'Barlow',
  );
  static  TextStyle headline2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontFamily: 'Barlow',
  );
  static  TextStyle headline3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
    fontFamily: 'Barlow',
  );
  static  TextStyle headline4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    fontFamily: 'Barlow',
  );

  static  TextStyle headline5 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.red,
    fontFamily: 'Barlow',
  );

  static  TextStyle headline6 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
    fontFamily: 'Barlow',
  );

  static  TextStyle bodyText1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary,
    fontFamily: 'Barlow',
  );
  
}
