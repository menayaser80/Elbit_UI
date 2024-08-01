
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/image_constant.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/homehelper.dart';
import '../../widget/app_bar/appbar_subtitle.dart';
import '../../widget/app_bar/custom_app_bar.dart';
import '../../widget/app_bar/homecustom.dart';
import '../../widget/custom_image_view.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildStackOne(context),
              Spacer(),
              _buildRowOne(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildRowTwo(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackOne(BuildContext context) {
    return SizedBox(
      height: 398.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            child: Image.asset(ImageConstant.img3),
            height: 398.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
          Container(
            child: Image.asset(ImageConstant.img2),
            height: 290.v,
            width: 276.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 188.v),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 28.h,
                right: 67.h,
                bottom: 1.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAppBar(
                    height: 40.v,
                    title: Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Column(
                        children: [
                          AppbarSubtitle(
                            text: "تخطي",
                            onTap: (){
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.loginScreen);
                            },
                          ),
                          SizedBox(
                            width: 36.h,
                            child: Divider(
                              indent: 1.h,
                              endIndent: 1.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 91.v),
                  Container(
                    child: SvgPicture.asset(ImageConstant.imgInNoTimeAmico),
                    height: 262.v,
                    width: 273.h,
                    alignment: Alignment.center,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildRowOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){

              Navigator.of(context)
                  .pushNamed(AppRoutes.loginScreen);
            },
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 2.v,
            margin: EdgeInsets.symmetric(vertical: 15.v),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 12,
                activeDotColor: theme.colorScheme.primary,
                dotColor: theme.colorScheme.primary,
                dotHeight: 2.v,
                dotWidth: 28.h,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context)
                  .pushNamed(AppRoutes.onboardingTwoScreen);
            },
            child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.fillBlueGray,
                child: Image.asset('assets/images/right.png',
                  color: Colors.white,)
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 140.h,
        right: 140.h,
        bottom: 52.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "powered by",
              style: CustomTextStyles.bodySmallTajawalBluegray60001,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCibApple,
            height: 19.adaptSize,
            width: 19.adaptSize,
            color: Colors.black,
            margin: EdgeInsets.only(left: 9.h),
          ),
        ],
      ),
    );
  }
}
