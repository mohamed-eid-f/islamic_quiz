import "package:flutter/material.dart";

import "../colors/app_colors.dart";
import "../consts/consts.dart";

var appThemeData = ThemeData(
  scaffoldBackgroundColor: AppColors.primary,
  //       backgroundColor: AppColors.primary,

  brightness: Brightness.light,
  fontFamily: "Inter",
  cardColor: const Color(0xFFedecf2),
  primaryColor: AppColors.primary,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.fontColor,
    size: 28,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primary,
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(0),
        side: BorderSide(color: AppColors.primary, width: 2),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide.none,
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: AppColors.secondary,
    backgroundColor: AppColors.primary,
    elevation: 4,
    shape: CircleBorder(),
    iconSize: 32,
  ),
  chipTheme: const ChipThemeData(
    selectedColor: AppColors.primary,
    disabledColor: Colors.grey,
    labelStyle: TextStyle(
      // color: AppColors.fontColor,
      fontWeight: FontWeight.bold,
    ),
    showCheckmark: false,

    // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    elevation: 0,
    backgroundColor: AppColors.secondary,
    shape: StadiumBorder(side: BorderSide(color: Colors.transparent)),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: AppColors.fontColor,
      fontSize: 24,
      fontFamily: "Alexandria",
      wordSpacing: 2,
      height: 1.3,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: AppColors.fontColor,
      fontSize: 18,
      fontFamily: "Alexandria",
      wordSpacing: 2,
      height: 1.3,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: AppColors.fontColor,
      fontSize: 16,
      fontFamily: "Alexandria",
      wordSpacing: 2,
      height: 1.3,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.fontColor,
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: AppColors.fontColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
);
