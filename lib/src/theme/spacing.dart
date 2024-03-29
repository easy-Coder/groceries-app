import 'package:flutter/material.dart';
import 'package:groceries_app/src/theme/color.dart';

class AppSpacings {
  AppSpacings._();
  static const double cardPadding = 20;
  static const double webWidth = 1080;
  static const double elementSpacing = cardPadding * 0.5;
  static const double cardOutlineWidth = 0.25;

  static const defaultBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(14),
    topRight: Radius.circular(14),
    bottomLeft: Radius.circular(14),
    bottomRight: Radius.circular(14),
  );

  static const defaultBorderRadiusTextField = BorderRadius.only(
    topLeft: Radius.circular(67),
    topRight: Radius.circular(67),
    bottomLeft: Radius.circular(67),
    bottomRight: Radius.circular(67),
  );

  static const defaultCircularRadius = BorderRadius.only(
    topLeft: Radius.circular(999),
    topRight: Radius.circular(999),
    bottomLeft: Radius.circular(999),
    bottomRight: Radius.circular(999),
  );

  static const OutlineInputBorder outLineBorder = OutlineInputBorder(
    borderRadius: defaultBorderRadiusTextField,
    borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
  );

  static const OutlineInputBorder disabledOutLineBorder = OutlineInputBorder(
    borderRadius: defaultBorderRadiusTextField,
    borderSide: BorderSide(color: AppColors.white, width: 1.2),
  );
  static const OutlineInputBorder errorLineBorder = OutlineInputBorder(
    borderRadius: defaultBorderRadiusTextField,
    borderSide: BorderSide(color: Colors.red, width: 1.2),
  );
}
