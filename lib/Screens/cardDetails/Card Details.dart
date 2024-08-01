import 'package:dotted_border/dotted_border.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:elbit_ui/widget/custom_checkbox_button.dart';


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../theme/theme_helper.dart';
import '../../widget/Home/custom text field.dart';
import '../../widget/Wishlist/apppar title.dart';
import '../../widget/custom_icon_button.dart';
import '../../widget/product_details/customtext.dart';



// ignore_for_file: must_be_immutable
class CardDetailsScreen extends StatelessWidget {
  CardDetailsScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  bool saveChanges = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(children: [
                    _buildOne(context),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.h, vertical: 12.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Card Number *",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 6.v),
                          CustomTextFormField(controller: cardNumberController),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Card Holder Name *",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 6.v),
                          CustomTextFormField(
                              controller: nameController,
                              textInputAction: TextInputAction.done),
                          SizedBox(height: 14.v),
                          _buildBottom(context),
                          SizedBox(height: 24.v),
                          _buildSaveChanges(context),
                          SizedBox(height: 52.v),
                          CustomElevatedButton(
                            onPressed: (){

                            },
                              text: "Save Changes",
                              margin: EdgeInsets.symmetric(horizontal: 29.h)),
                          SizedBox(height: 5.v)
                        ]))
                  ]),
                ))));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
        decoration: AppDecoration.gradientBlueGrayToTeal
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL98),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomAppBar(
              leadingWidth: 40.h,
              leading:  InkWell(
                onTap: (){
                  onTapArrowLeft(context);
                },
                child: Container(

                  child: SvgPicture.asset(ImageConstant.imgArrowLeft,),
                  margin: EdgeInsets.only(left: 24.h),
                ),
              ),
              centerTitle: true,
              title: AppbarTitle(text: "Card Details")),
          SizedBox(height: 45.v),
          SizedBox(
              height: 185.v,
              width: 282.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: DottedBorder(
                        color: appTheme.blueGray300,
                        padding: EdgeInsets.only(
                            left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
                        strokeWidth: 2.h,
                        radius: Radius.circular(10),
                        borderType: BorderType.RRect,
                        dashPattern: [6, 6],
                        child: Container(
                            height: 148.v,
                            width: 231.h,
                            decoration: BoxDecoration(
                                color: appTheme.gray10001.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10.h))))),
                Align(
                    alignment: Alignment.center,
                    child: DottedBorder(
                        color: appTheme.blueGray300,
                        padding: EdgeInsets.only(
                            left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
                        strokeWidth: 2.h,
                        radius: Radius.circular(10),
                        borderType: BorderType.RRect,
                        dashPattern: [6, 6],
                        child: Container(
                            height: 161.v,
                            width: 251.h,
                            decoration: BoxDecoration(
                                color: appTheme.gray10001.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10.h))))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: appTheme.blueGray300,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 3.h),
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Container(
                            height: 155.v,
                            width: 282.h,
                            decoration: AppDecoration.outline.copyWith(
                                borderRadius:
                                BorderRadiusStyle.roundedBorder10),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: 155.v,
                                          width: 160.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 23.h, vertical: 19.v),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: fs.Svg(
                                                      ImageConstant.imgGroup2),
                                                  fit: BoxFit.cover)),
                                          child:
                                          Container(
                                            height: 25.v,
                                            width: 42.h,
                                            alignment: Alignment.topRight,
                                            child: SvgPicture.asset(ImageConstant.imgUser,),
                                            margin: EdgeInsets.only(left: 24.h),
                                          ),

                                      )),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                EdgeInsets.only(left: 14.h),
                                                child: Text("Credit/Debit Card",
                                                    style: CustomTextStyles
                                                        .bodyLargeGray100)),
                                            SizedBox(height: 5.v),
                                            Container(
                                                height: 23.v,
                                                width: 32.h,
                                                child: SvgPicture.asset(ImageConstant.imgGroup273,),
                                                margin: EdgeInsets.only(
                                                    left: 14.h)),
                                            SizedBox(height: 4.v),
                                            Padding(
                                                padding:
                                                EdgeInsets.only(left: 14.h),
                                                child: Text(
                                                    "1233 45** **** 0000",
                                                    style: CustomTextStyles
                                                        .bodyLargeOCRAExtendedGray100)),
                                            SizedBox(height: 15.v),
                                            Container(
                                                decoration:
                                                AppDecoration.outline1,
                                                child: OutlineGradientButton(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h,
                                                        top: 1.v,
                                                        right: 1.h,
                                                        bottom: 1.v),
                                                    strokeWidth: 1.h,
                                                    gradient: LinearGradient(
                                                        begin: Alignment(
                                                            0.97, 0.01),
                                                        end: Alignment(
                                                            0.02, 0.98),
                                                        colors: [
                                                          theme.colorScheme
                                                              .onPrimary
                                                              .withOpacity(1),
                                                          theme.colorScheme
                                                              .onPrimary,
                                                          theme.colorScheme
                                                              .onPrimary
                                                              .withOpacity(1)
                                                        ]),
                                                    corners: Corners(
                                                        topLeft:
                                                        Radius.circular(0),
                                                        topRight:
                                                        Radius.circular(0),
                                                        bottomLeft:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(
                                                            10)),
                                                    child: Padding(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            12.h,
                                                            11.v,
                                                            12.h,
                                                            10.v),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  bottom:
                                                                  1.v),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                        "Card Holder Name",
                                                                        style: CustomTextStyles
                                                                            .bodySmallLight),
                                                                    SizedBox(
                                                                        height:
                                                                        4.v),
                                                                    Text(
                                                                        "Mariam elKilany",
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall)
                                                                  ])),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left:
                                                                  36.h,
                                                                  bottom:
                                                                  1.v),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                        "Expiry Date",
                                                                        style: CustomTextStyles
                                                                            .bodySmallLight),
                                                                    SizedBox(
                                                                        height:
                                                                        3.v),
                                                                    Text(
                                                                        "05/26",
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall)
                                                                  ]))
                                                        ]))))
                                          ]))
                                ]))))
              ])),
          SizedBox(height: 14.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 24.h),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child:
                        Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          alignment: Alignment.center,
                            child: SvgPicture.asset(ImageConstant.imgMingcuteAddFill),

                  ),


                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: InkWell(
                          onTap: (){},
                          child: Text("Add Card",
                              style: CustomTextStyles.bodyLargePrimary),
                        ))
                  ]))),
          SizedBox(height: 18.v)
        ]));
  }

  /// Section Widget
  Widget _buildRight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Expiry Date *", style: theme.textTheme.titleMedium),
          SizedBox(height: 4.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 5.v),
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("MM/YY",
                        style: CustomTextStyles.bodyLargeBluegray300))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Container(
        width: 163.h,
        margin: EdgeInsets.only(left: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("CVV *", style: theme.textTheme.titleMedium),
            SizedBox(height: 6.v),
            Container(
                height: 33.v,
                width: 125.h,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(15.h)))
          ]),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 25.v),
              child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  child: Container(
                    child: SvgPicture.asset( ImageConstant.imgInbox),
                  ),


              ))
        ]));
  }

  /// Section Widget
  Widget _buildBottom(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildRight(context),
      Container(
        child: SvgPicture.asset(ImageConstant.imgCalendar,),
    height: 34.adaptSize,
    width: 34.adaptSize,
    margin: EdgeInsets.only(left: 4.h, top: 25.v)),
      _buildCvv(context)
    ]);
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 47.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Save the Card info for future purchases",
                value: saveChanges,

                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  saveChanges = value;
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
