
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_outlined_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';




class ShoppingCartBottomsheet extends StatelessWidget {
  const ShoppingCartBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 269.v,
                      width: 262.h,
                      margin: EdgeInsets.only(left: 26.h),
                      child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 10.h, bottom: 244.v),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              child: SvgPicture.asset(ImageConstant.imgArrowLeft),
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,

                                            ),
                                          ),
                                          Text("Cart Shopping",
                                              style: theme
                                                  .textTheme.headlineSmall)
                                        ]))),

                          ]))),
            ],
          ),
        ),
      ),
      bottomNavigationBar:Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 120.h,
              child: Divider(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              "Cart Summary",
              style: CustomTextStyles.titleLargeOnPrimaryContainer,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Min Order: 100 ",
                    style: CustomTextStyles.bodyMediumff8797a8,
                  ),
                  TextSpan(
                    text: "EGP",
                    style: CustomTextStyles.bodyMediumff8797a8,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildCartItemsRow(
                context,
                subtotalText: "Cart items",
                priceText: "6 Items",
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildCartItemsRow(
                context,
                subtotalText: "Subtotal",
                priceText: "150 EGP",
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: _buildCartItemsRow(
                context,
                subtotalText: "Delivery Fees",
                priceText: "50 EGP",
              ),
            ),
            SizedBox(height: 19.v),
            Divider(
              color: appTheme.black900,
            ),
            SizedBox(height: 7.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Total Fees",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "200.00",
                        style: CustomTextStyles.titleLargeBold,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "EGP",
                        style: CustomTextStyles.titleLargeBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(height: 22.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOutlinedButton(
                    width: 167.h,
                    text: "Add Items",
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL19,
                  ),
                  CustomElevatedButton(
                    height: 39.v,
                    width: 166.h,
                    text: "CheckOut",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                    buttonTextStyle: CustomTextStyles.titleMediumInterGray10001,
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.v),
          ],
        ),
      ),
    );


  }

  /// Common widget
  Widget _buildCartItemsRow(
    BuildContext context, {
    required String subtotalText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subtotalText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "150 ",
                style: CustomTextStyles.titleMediumff142433,
              ),
              TextSpan(
                text: "EGP",
                style: CustomTextStyles.titleMediumff142433,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
