
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../theme/custom_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(Duration(seconds: 3),(){
     Navigator.of(context)
         .pushNamed(AppRoutes.onboardingOneScreen);
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor:Color(0XFFDAE6F2) ,
        body: SizedBox(
          height: 728.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img3,
                height: 398.v,
                width: 390.h,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.img2,
                height: 290.v,
                width: 276.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 188.v),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildPoweredByRow(context),
      ),
    );
  }

  Widget _buildPoweredByRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 153.h,
        right: 135.h,
        bottom: 52.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 4.v,
            ),
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
