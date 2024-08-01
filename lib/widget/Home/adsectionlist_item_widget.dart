
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';


class AdsectionlistItemWidget extends StatelessWidget {
  const AdsectionlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 134.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle509,
            height: 134.v,
            width: 305.h,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 91.v),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.gradientIndigoToIndigo.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Text(
                      "Up to 50% Off ",
                      style: CustomTextStyles.titleMediumGray100,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrow4,
                    height: 1.v,
                    width: 38.h,
                    margin: EdgeInsets.only(
                      top: 18.v,
                      right: 11.h,
                      bottom: 8.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
