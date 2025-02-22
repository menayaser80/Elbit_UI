
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleImage extends StatelessWidget {
  AppbarTitleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 85.v,
          width: 79.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
