

import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';


// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  const ProductdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 136.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 1.v),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder9,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle5113,
                height: 101.v,
                width: 129.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Product Name",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50 Watt",
                        style: CustomTextStyles.bodySmallBluegray60001,
                      ),
                      SizedBox(height: 11.v),
                      SizedBox(
                        height: 14.v,
                        width: 51.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "300.00 ",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    TextSpan(
                                      text: "EGP",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                child: Divider(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "200.00 ",
                              style: theme.textTheme.titleMedium,
                            ),
                            TextSpan(
                              text: "EGP",
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 30.v,
                    ),
                    child: CustomIconButton(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTablerPlus,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
