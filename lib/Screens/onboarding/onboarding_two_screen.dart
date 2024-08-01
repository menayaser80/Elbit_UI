
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

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
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
              _buildOnboardingStack(context),
              Spacer(),
              _buildOnboardingRow(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildPoweredByRow(context),
      ),
    );
  }

  Widget _buildOnboardingStack(BuildContext context) {
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

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 69.h,
                bottom: 1.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAppBar(
                    height: 40.v,
                    title: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Column(
                        children: [
                          AppbarSubtitle(
                            onTap: (){
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.loginScreen);
                            },
                            text: "تخطي",
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
                  SizedBox(height: 89.v),
                  Container(
                    child: SvgPicture.asset(ImageConstant.imgPaymentInformationBro),
                    height: 264.v,
                    width: 268.h,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildOnboardingRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context)
                  .pushNamed(AppRoutes.onboardingThreeScreen);
            },
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(
                color: Colors.white,
                imagePath: ImageConstant.imgArrowLeft,
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
                spacing: 10,
                activeDotColor: appTheme.blueGray300,
                dotColor: theme.colorScheme.primary,
                dotHeight: 2.v,
                dotWidth: 28.h,
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context)
                  .pushNamed(AppRoutes.onboardingOneScreen);
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


  Widget _buildPoweredByRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 140.h,
        right: 135.h,
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
