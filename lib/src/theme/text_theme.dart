import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/src/theme/color.dart';

class AppTextThemes {
  static const double headline1Size = 34;
  static const double headline2Size = 28;
  static const double headline3Size = 24;
  static const double headline4Size = 20;
  static const double headline5Size = 18;
  static const double headline6Size = 16;
  static const double subtile1Size = 15;
  static const double subtile2Size = 13;
  static const double body1Size = 16;
  static const double body2Size = 14;
  static const double buttonSize = 16;
  static const double caption = 12;
  static const double overline = 12.5;

  static TextTheme mobileTextThemeLight = TextTheme(
    // displayLarge: GoogleFonts.dmSans(
    //   fontSize: headline1Size,
    //   color: AppColors.darkFontColor,
    //   fontWeight: FontWeight.w400,
    // ),
    displayMedium: GoogleFonts.dmSans(
      fontSize: headline2Size,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.dmSans(
      fontSize: headline3Size,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.dmSans(
      fontSize: headline4Size,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.dmSans(
      fontSize: headline5Size,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.dmSans(
      fontSize: headline6Size,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.dmSans(
      fontSize: headline6Size,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.w500,
    ),
    // titleSmall: GoogleFonts.dmSans(
    //   fontSize: subtile2Size,
    //   color: AppColors.darkFontColor,
    //   fontWeight: FontWeight.w700,
    // ),
    bodyLarge: GoogleFonts.dmSans(
      fontSize: body2Size,
      color: AppColors.lightTextColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.dmSans(
      fontSize: body2Size,
      color: AppColors.lightFontGreyColor,
      fontWeight: FontWeight.w500,
    ),
    // labelLarge: GoogleFonts.dmSans(
    //   fontSize: buttonSize,
    //   color: AppColors.white,
    //   fontWeight: FontWeight.w600,
    // ),
    bodySmall: GoogleFonts.dmSans(
      fontSize: caption,
      color: AppColors.darkFontColor,
      fontWeight: FontWeight.w500,
    ),
  );

  static TextTheme mobileTextThemeDark = TextTheme(
    // displayLarge: GoogleFonts.dmSans(
    //   fontSize: headline1Size,
    //   color: AppColors.white,
    //   fontWeight: FontWeight.w400,
    // ),
    displayMedium: GoogleFonts.dmSans(
      fontSize: headline2Size,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.dmSans(
      fontSize: headline3Size,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.dmSans(
      fontSize: headline4Size,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.dmSans(
      fontSize: headline5Size,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.dmSans(
      fontSize: headline6Size,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.dmSans(
      fontSize: headline6Size,
      color: AppColors.white,
      fontWeight: FontWeight.w500,
    ),
    // titleSmall: GoogleFonts.dmSans(
    //   fontSize: subtile2Size,
    //   color: AppColors.white,
    //   fontWeight: FontWeight.w700,
    // ),
    bodyLarge: GoogleFonts.dmSans(
      fontSize: body2Size,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.dmSans(
      fontSize: body2Size,
      color: AppColors.lightFontGreyColor,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: GoogleFonts.dmSans(
      fontSize: buttonSize,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: GoogleFonts.dmSans(
      fontSize: caption,
      color: AppColors.darkFontGreyColor,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: GoogleFonts.dmSans(
      fontSize: overline,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
  );
}
