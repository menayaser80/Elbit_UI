
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class orderunderconfirm extends StatelessWidget {
  const orderunderconfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 40.h,
                  vertical: 5.v,
                ),
                child: Column(children: [
                  SizedBox(
                    height: 18.v,
                    width: 286.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: SizedBox(
                              width: 144.h,
                              child: Divider(
                                color: theme.colorScheme.primary,
                                indent: 14.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: SizedBox(
                              width: 136.h,
                              child: Divider(
                                color: appTheme.blueGray60001,
                                endIndent: 6.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(left: 268.h),
                            padding: EdgeInsets.all(3.h),
                            decoration: AppDecoration.fillBluegray60001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray60001.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 134.h),
                            padding: EdgeInsets.all(3.h),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(right: 268.h),
                            padding: EdgeInsets.all(3.h),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Checkout",
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "Confirmation",
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "Delivered",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 78.v),
                  Container(
                    child: SvgPicture.asset(ImageConstant.imgLoading),
                      height: 184.v,
                      width: 236.h
                  ),
                  Container(
                      width: 277.h,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text("Your Order is under Confirmation",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge)),
                  SizedBox(height: 9.v),
                  Container(
                      width: 254.h,
                      margin: EdgeInsets.symmetric(horizontal: 27.h),
                      child: Text(
                          "Please stay updated with your order progress until your order is confirmed",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(
                      text: "Add items",
                      margin: EdgeInsets.symmetric(horizontal: 25.h)),
                  SizedBox(height: 20.v),
                  InkWell(
                      onTap: (){},
                      child: Text("Cancel Order", style:TextStyle(
                        color: Colors.red,
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      )

                      )),
                  SizedBox(height: 5.v)
                ]))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height:70.v,
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Checkout ",
              style: CustomTextStyles.headlineSmallff142433,
            ),
            TextSpan(
              text: "(2/3)",
              style: theme.textTheme.titleLarge,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
