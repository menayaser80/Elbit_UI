

import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray600,
  );
  static BoxDecoration get outline1 => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );
  static BoxDecoration get fillBlueGrayF => BoxDecoration(
    color: appTheme.blueGray6007f.withOpacity(0.2),
  );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
    color: theme.colorScheme.secondaryContainer,
  );
  static BoxDecoration get outline => BoxDecoration(
    color: appTheme.blueGray300,
  );
  static BoxDecoration get gradientOnPrimaryToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        theme.colorScheme.onPrimary.withOpacity(1),
        theme.colorScheme.onPrimary.withOpacity(0.73),
        appTheme.blueGray300,
      ],
    ),
  );
  static BoxDecoration get gradientBlueGrayToTeal => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.71, 0),
      end: Alignment(0, 1),
      colors: [
        appTheme.blueGray300,
        appTheme.teal10000,
      ],
    ),
  );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.primaryContainer,
  );
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.blueGray300,
        appTheme.blueGray300.withOpacity(0),
      ],
    ),
  );
  static BoxDecoration get fillBluegray60001 => BoxDecoration(
    color: appTheme.blueGray60001.withOpacity(0.2),
  );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
    color: theme.colorScheme.onPrimary.withOpacity(1),
  );
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
  );
  static BoxDecoration get fillTeal => BoxDecoration(
    color: appTheme.teal50,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillGreen => BoxDecoration(
    color: appTheme.green700,
  );
  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo800,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );

  // Gradient decorations
  static BoxDecoration get gradientIndigoToIndigo => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.indigo800.withOpacity(0),
        appTheme.indigo800,
      ],
    ),
  );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
    border: Border.all(
      color: appTheme.blueGray300,
      width: 1.h,
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
    15.h,
  );
  static BorderRadius get circleBorder12 => BorderRadius.circular(
    12.h,
  );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
    16.h,
  );
  static BorderRadius get circleBorder21 => BorderRadius.circular(
    21.h,
  );

  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
    bottom: Radius.circular(30.h),
  );
  static BorderRadius get customBorderTL10 => BorderRadius.only(
    topLeft: Radius.circular(10.h),
    bottomRight: Radius.circular(10.h),
  );

  // Rounded borders
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
    30.h,
  );
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
    9.h,
  );
  static BorderRadius get customBorderBL98 => BorderRadius.only(
    bottomLeft: Radius.circular(98.h),
  );
  static BorderRadius get circleBorder15 => BorderRadius.circular(
    15.h,
  );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
    24.h,
  );
  static BorderRadius get circleBorder44 => BorderRadius.circular(
    44.h,
  );
  static BorderRadius get circleBorder59 => BorderRadius.circular(
    59.h,
  );
  static BorderRadius get circleBorder9 => BorderRadius.circular(
    9.h,
  );

  // Rounded borders
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
    5.h,
  );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
    bottom: Radius.circular(10.h),
  );
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
    bottom: Radius.circular(20.h),
  );

  static BorderRadius get customBorderTL50 => BorderRadius.vertical(
    top: Radius.circular(50.h),
  );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
    10.h,
  );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
    20.h,
  );

}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
