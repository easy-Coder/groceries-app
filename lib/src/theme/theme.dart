import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/src/theme/color.dart';
import 'package:groceries_app/src/theme/spacing.dart';
import 'package:groceries_app/src/theme/text_theme.dart';
// import 'package:okepoint/UI/theme/spacings.dart';
// import 'package:okepoint/UI/theme/text_theme.dart';
// import '../../constants/app_fonts.dart';

class AppThemeData {
  static ThemeData themeLight = ThemeData(
    fontFamily: 'DM Sans',
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.white,
      iconTheme: IconThemeData(
        color: AppColors.lightFontGreyColor,
        size: 24,
      ),
      toolbarHeight: 47,
    ),
    // dividerTheme: const DividerThemeData(color: AppColors.dividerLight, thickness: AppSpacings.cardOutlineWidth),
    colorScheme: const ColorScheme(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondayColor,
      onPrimary: AppColors.white,
      surface: AppColors.lightBGColor,
      onSurface: AppColors.darkFontColor,
      background: AppColors.white,
      brightness: Brightness.light,
      error: Colors.red,
      onBackground: AppColors.lightGrey2Color,
      onError: AppColors.white,
      onSecondary: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryColor,
    buttonTheme: const ButtonThemeData(
      height: 53,
      splashColor: AppColors.lightGrey2Color,
    ),
    hintColor: AppColors.white,
    indicatorColor: AppColors.white,
    // radioTheme: RadioThemeData(
    //   fillColor: MaterialStateProperty.all(AppColors.cardDark),
    //   splashRadius: AppSpacings.cardPadding,
    // ),
    iconTheme: const IconThemeData(
      color: AppColors.darkFontColor,
      size: 24,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.darkFontColor,
      unselectedItemColor: AppColors.lightGrey2Color,
      selectedIconTheme: IconThemeData(
        color: AppColors.darkFontColor,
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.lightGrey2Color,
        size: 24,
      ),
    ),
    splashColor: AppColors.lightGrey2Color,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
      hintStyle: AppTextThemes.mobileTextThemeLight.bodySmall?.copyWith(
        color: AppColors.lightFontGreyColor,
      ),
      iconColor: AppColors.primaryColor,
      border: AppSpacings.outLineBorder.copyWith(
        borderSide: BorderSide.none,
      ),
      focusColor: AppColors.white,
      enabledBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: BorderSide.none,
      ),
      errorBorder: AppSpacings.errorLineBorder,
      focusedErrorBorder: AppSpacings.errorLineBorder,
      focusedBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
      // disabledBorder: AppSpacings.disabledOutLineBorder,
      isDense: true,
      contentPadding: const EdgeInsets.all(AppSpacings.cardPadding),
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.lightFontGreyColor,
      size: 24,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerColor: AppColors.stroke,
    // unselectedWidgetColor: AppColors.unselectedColorLight,
    canvasColor: AppColors.lightBGColor,

    cardTheme: CardTheme(
      color: AppColors.lightBGColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          24,
        ),
      ),
    ),
    textTheme: AppTextThemes.mobileTextThemeLight,
    primaryTextTheme: AppTextThemes.mobileTextThemeLight,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
  );

  static ThemeData themeDark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'DM Sans',
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBG2Color,
      iconTheme: IconThemeData(
        color: AppColors.white,
        size: 24,
      ),
    ),
    // dividerTheme: const DividerThemeData(color: AppColors.dividerDark, thickness: AppSpacings.cardOutlineWidth),
    colorScheme: const ColorScheme(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondayColor,
      onPrimary: AppColors.primaryColor,
      surface: AppColors.darkBG2Color,
      onSurface: AppColors.white,
      background: AppColors.darkBGColor,
      brightness: Brightness.dark,
      error: Colors.red,
      onBackground: AppColors.white,
      onError: AppColors.white,
      onSecondary: AppColors.lightGrey,
    ),
    dividerColor: AppColors.darkStroke,
    cardColor: AppColors.darkBG2Color,
    scaffoldBackgroundColor: AppColors.darkBGColor,
    primaryColor: AppColors.primaryColor,
    buttonTheme: const ButtonThemeData(
      height: 47,
      splashColor: AppColors.lightGrey,
    ),
    hintColor: AppColors.white,
    indicatorColor: AppColors.white,
    canvasColor: AppColors.darkBG2Color,
    cardTheme: CardTheme(
      color: AppColors.darkBG2Color,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          24,
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
      size: 24,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.darkGrey,
      unselectedIconTheme: IconThemeData(
        color: AppColors.darkFontGreyColor,
        size: 24,
      ),
      selectedIconTheme: IconThemeData(
        color: AppColors.white,
        size: 24,
      ),
    ),
    splashColor: AppColors.lightGrey,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.darkBG2Color,
      filled: true,
      hintStyle: AppTextThemes.mobileTextThemeLight.bodySmall?.copyWith(
        color: AppColors.darkFontGreyColor,
      ),
      iconColor: AppColors.white,
      helperStyle: AppTextThemes.mobileTextThemeDark.bodyMedium,
      border: AppSpacings.outLineBorder.copyWith(
        borderSide: BorderSide.none,
      ),
      focusColor: AppColors.white,
      enabledBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: BorderSide.none,
      ),
      errorBorder: AppSpacings.errorLineBorder,
      focusedBorder: AppSpacings.outLineBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
      disabledBorder: AppSpacings.disabledOutLineBorder,
      isDense: true,
      contentPadding: const EdgeInsets.all(AppSpacings.cardPadding),
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.darkFontGreyColor,
      size: 24,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    unselectedWidgetColor: AppColors.lightGrey2Color,
    textTheme: AppTextThemes.mobileTextThemeDark,
    primaryTextTheme: AppTextThemes.mobileTextThemeDark,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
  );
}
