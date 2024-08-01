
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

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 29.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.v),
            Container(
              child: SvgPicture.asset(ImageConstant.imgPriceAmico,),
              height: 268.v,
              width: 320.h,
              alignment: Alignment.center,
            ),
              Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .pushNamed(AppRoutes.onboardingTwoScreen);
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
                    margin: EdgeInsets.only(
                      left: 95.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 2,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 10,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: appTheme.blueGray300,
                        dotHeight: 2.v,
                        dotWidth: 28.h,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildPoweredBy(context),
      ),
    );
  }


  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
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
    );
  }


  Widget _buildPoweredBy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 153.h,
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
