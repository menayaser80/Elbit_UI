
import 'package:elbit_ui/Screens/Notification/not1.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widget/Wishlist/apppar title.dart';
import '../../widget/app_bar/custom_app_bar.dart';

class DefaultNotificationPageScreen extends StatefulWidget {
  DefaultNotificationPageScreen({Key? key}) : super(key: key);

  @override
  State<DefaultNotificationPageScreen> createState() => _DefaultNotificationPageScreenState();
}

class _DefaultNotificationPageScreenState extends State<DefaultNotificationPageScreen> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                child: Column(children: [
                  _buildThree(context),
                  SizedBox(height: 10.v),
                  Divider(),
                  Spacer(flex: 32),
                  Container(
                    child: SvgPicture.asset(ImageConstant.imgNotfification),
                    height: 134.v,
                    width: 209.h
                  ),

                  SizedBox(height: 26.v),
                  Text("New Notifications will appear here",
                      style: theme.textTheme.bodyLarge),
                  Spacer(flex: 67)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading:  InkWell(
          onTap: (){
            onTapArrowLeft(context);
          },
          child:
          Container(

            child: SvgPicture.asset(ImageConstant.imgArrowLeft,),
            margin: EdgeInsets.only(left: 24.h),
          ),
        ),
        centerTitle: true,
        title: AppbarTitle(text: "Notifications"));
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: (){
            Get.to(NotificationPageScreen());
          },
          child: Text("New Notifications",
            style:  CustomTextStyles.titleMediumBlack900.copyWith(
            color: appTheme.black900,
          ),),
        ),
        Spacer(),
        Text("Turn Off", style: theme.textTheme.titleMedium),
        CustomSwitch(
            margin: EdgeInsets.only(left: 8.h, top: 2.v),
            value: isSelectedSwitch,
            onChange: (value) {
              setState(() {
                isSelectedSwitch = value;
              });

            }),
      ]),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
