import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';

class AppTheme {
  static ThemeData appThemeLight = ThemeData(
    primaryColor: AppColors.primaryColor,fontFamily: 'Poppins',
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      centerTitle: true,
      elevation: 5,
      shadowColor: AppColors.blackColor.withOpacity(0.25),
      titleTextStyle: const TextStyle(
          color: AppColors.blackColor,
          fontSize:518,
          fontWeight: FontWeight.bold),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: AppColors.blackColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize:15,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 19,
        fontWeight: FontWeight.normal,
      ),
      headlineLarge: TextStyle(
        color: AppColors.darkGreyColor,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),

    bottomSheetTheme: const BottomSheetThemeData(
      elevation: 5,
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    ),
  );
}
