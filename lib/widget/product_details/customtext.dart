import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get titleSmallff224971 => theme.textTheme.titleSmall!.copyWith(
    color: Color(0XFF224971),
  );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primary,
    fontSize: 10.fSize,
  );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.primary,
  );
  static get bodySmallPrimary12 => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primary,
    fontSize: 12.fSize,
  );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
    color: theme.colorScheme.primary,
    fontSize: 10.fSize,
  );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryExtraBold => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w800,
  );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w500,
  );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
    color: Color(0XFF000000),
  );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.primary,
  );
  static get titleMediumInterGray10001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w600,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
    fontSize: 9.fSize,
    fontWeight: FontWeight.w300,
  );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.blueGray300,
  );
  static get bodyLargeGray100 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray100,
  );
  static get bodyLargeOCRAExtendedGray100 =>
      theme.textTheme.bodyLarge!.oCRAExtended.copyWith(
        color: appTheme.gray100,
      );
  static get headlineSmallff142433 => theme.textTheme.headlineSmall!.copyWith(
    color: Color(0XFF142433),
  );
  static get titleMediumff142433 => theme.textTheme.titleMedium!.copyWith(
    color: Color(0XFF142433),
  );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.black900,
  );
  static get bodyMediumff8797a8 => theme.textTheme.bodyMedium!.copyWith(
    color: Color(0XFF8797A8),
  );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w700,
  );
  static get labelLargeTajawalBluegray300 =>
      theme.textTheme.labelLarge!.tajawal.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get bodySmallTajawalBluegray60001 =>
      theme.textTheme.bodySmall!.tajawal.copyWith(
        color: appTheme.blueGray60001,
        fontSize: 11.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumff506173 => theme.textTheme.bodyMedium!.copyWith(
    color: Color(0XFF506173),
  );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray100,
  );
}

extension on TextStyle {
  TextStyle get tajawal {
    return copyWith(
      fontFamily: 'Tajawal',

    );
  }
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
  TextStyle get oCRAExtended {
    return copyWith(
      fontFamily: 'OCR A Extended',
    );
  }
}
