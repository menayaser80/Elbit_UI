
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MainWishlist extends StatelessWidget {
  const MainWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 43.v),
                child: Column(children: [
                  _buildThreeRow(context),
                  SizedBox(height: 7.v),
                  _buildTwoRow(context),
                  SizedBox(height: 7.v),
                  _buildOneRow(context),
                  SizedBox(height: 7.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading:
        Container(
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: SvgPicture.asset(ImageConstant.imgArrowLeft,)),
          margin: EdgeInsets.only(left: 25.h, bottom: 0.v),
        ),

        centerTitle: true,
        title: Text(
             "Wishlist", style: theme
            .textTheme.headlineSmall ),
        );
  }

  /// Section Widget
  Widget _buildThreeRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 13.adaptSize,
                  width: 13.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray900,
                      borderRadius: BorderRadius.circular(6.h))),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 1.v, bottom: 3.v),
                  child: Text("My New Wishlist",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                        fontSize: 14.0
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 5.v),
                  child: Text("(4 items) - Default",
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                child: InkWell(
                  onTap: (){
                    },
                  child: SvgPicture.asset('assets/images/rights.svg',
                  ),
                ),
              ),

            ]));
  }

  /// Section Widget
  Widget _buildTwoRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 13.adaptSize,
                  width: 13.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray900,
                      borderRadius: BorderRadius.circular(6.h))),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 1.v, bottom: 3.v),
                  child: Text("My Electronics Wishlist",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal',
                          fontSize: 13.0
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 5.v),
                  child: Text("(2 items)",
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              Container(
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
                child: InkWell(
                  onTap: (){
                  },
                  child: SvgPicture.asset('assets/images/rights.svg',
                  ),
                ),
              ),

            ]));
  }

  /// Section Widget
  Widget _buildOneRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 13.adaptSize,
                  width: 13.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray900,
                      borderRadius: BorderRadius.circular(6.h))),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, bottom: 5.v),
                  child:
                  Text("Most Favorites", style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                      fontSize: 13.0
                  ))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 5.v),
                  child: Text("(24 items)",
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              Container(
                height: 24.adaptSize,
                width: 24.adaptSize,
                child: InkWell(
                  onTap: (){
                  },
                  child: SvgPicture.asset('assets/images/rights.svg',
                  ),
                ),
              ),

            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
