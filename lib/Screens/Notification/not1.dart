
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/widget/Notification/NotificationpageItemWidget.dart';
import 'package:elbit_ui/widget/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widget/Wishlist/apppar title.dart';
import '../../widget/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationPageScreen extends StatefulWidget {
  NotificationPageScreen({Key? key}) : super(key: key);

  @override
  State<NotificationPageScreen> createState() => _NotificationPageScreenState();
}

class _NotificationPageScreenState extends State<NotificationPageScreen> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(

                    child: Column(children: [
                      _buildTwelve(context),
                      SizedBox(height: 10.v),
                      SizedBox(
                          height: 724.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildMsgOne(context),
                                _buildNotificationPage(context)
                              ])),
                      SizedBox(height: 3.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 58.h),
                              child: Text("01/02/24",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 16.v),
                      Divider()
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,

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
        title: AppbarTitle(text: "Notifications"));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("New Notifications", style: theme.textTheme.titleMedium),

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
          ],
          ),
    );
  }

  /// Section Widget
  Widget _buildMsgOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              decoration: AppDecoration.fillTeal,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    SizedBox(height: 12.v),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h, right: 59.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  margin:
                                  EdgeInsets.only(top: 2.v, bottom: 66.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo800,
                                      borderRadius:
                                      BorderRadius.circular(5.h))),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width: 272.h,
                                                child: Text(
                                                    "Lorem ipsum dolor sit amet consectetur. Aliquam sit ut massa posuere justo suspendisse sagittis mauris hac. ",
                                                    maxLines: 3,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyLargeGray900)),
                                            SizedBox(height: 2.v),
                                            Text("Now",
                                                style:
                                                theme.textTheme.bodyMedium)
                                          ])))
                            ])),
                    SizedBox(height: 17.v)
                  ])),
          Divider()
        ]));
  }

  /// Section Widget
  Widget _buildNotificationPage(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 82.v),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.5.v),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.teal50)));
                },
                itemCount: 7,
                itemBuilder: (context, index) {
                  return NotificationpageItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
