
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(26.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.indigo800.withOpacity(0.1),
        borderRadius: BorderRadius.circular(26.h),
        border: Border.all(
          color: appTheme.indigo800,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(8.h),
  );
}
