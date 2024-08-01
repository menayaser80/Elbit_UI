
import 'package:elbit_ui/Screens/auth/login_screen.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_button_style.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 27.v,
          ),
          child: Column(
            children: [


              SizedBox(height: 99.v),
              Container(
                child: SvgPicture.asset(ImageConstant.imgGroup36665,),
                height: 118.v,
                width: 119.h,
              ),
              SizedBox(height: 40.v),
              Container(
                width: 288.h,
                margin: EdgeInsets.only(
                  left: 11.h,
                  right: 10.h,
                ),
                child: Text(
                  "Password is successfully changed",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF142433),
                  ),

                ),
              ),

              SizedBox(height: 55.v),
              CustomElevatedButton(

                text: "Go to Login",
                margin: EdgeInsets.symmetric(horizontal: 19.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                onPressed: (){
                  Get.to(LoginScreen());
                },
              ),

            ],
          ),
        ),
      ),
    );
  }


}
