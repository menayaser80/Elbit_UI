import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA => BoxDecoration(
    color: appTheme.amberA400,
  );
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray600,
  );
  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo800.withOpacity(0.5),
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
    color: theme.colorScheme.onPrimary,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray10001,
  );
  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: appTheme.gray100,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
    top: Radius.circular(30.h),
  );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
    15.h,
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
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
    top: Radius.circular(10.h),
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
