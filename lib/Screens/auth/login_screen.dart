
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/Screens/auth/forgot_password_bottomsheet.dart';
import 'package:elbit_ui/Screens/bottom%20navigation%20bar/bottom%20nav%20with%20animated%20icon.dart';
import 'package:elbit_ui/core/utils/reusable.dart';
import 'package:elbit_ui/routes/app_routes.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widget/Home/custom text field.dart';
import '../../widget/product_details/customtext.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 491.v,
                        width: 366.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img2272x195,
                              height: 272.v,
                              width: 195.h,
                              alignment: Alignment.topLeft,
                            ),
                            _buildLoginForm(context),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 170.v,
                                  right: 160.h,
                                ),
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    InkWell(
                      onTap: (){
                        navigateTo(context,Bottom_Nav_bar());
                      },
                      child: Text(
                        "Continue as A Guest",
                        style: CustomTextStyles.titleMediumPrimary.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 57.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              bottom: 4.v,
                            ),
                            child: SizedBox(
                              width: 98.h,
                              child: Divider(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Text(
                              "Or ",
                              style: CustomTextStyles.bodySmallPrimary12,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              bottom: 4.v,
                            ),
                            child: SizedBox(
                              width: 98.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Sign In with",
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 98.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){

                              },
                              child: Image.asset('assets/images/gmail.png')),
                          Spacer(
                            flex: 50,
                          ),
                          InkWell(
                              onTap: (){},
                              child: Image.asset('assets/images/apple.png')),
                          Spacer(
                            flex: 50,
                          ),
                        InkWell
                          (
                            onTap: (){},
                            child: Image.asset('assets/images/facebook.png')),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t Have an Account? ",
                          style: CustomTextStyles.bodyMediumff000000,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.signUpScreen);
                            },
                            child: Text(
                              "Sign Up",
                              style:
                                  CustomTextStyles.titleSmallff224971.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildPoweredBySection(context),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "Phone Number",
                style: CustomTextStyles.titleSmallPrimaryExtraBold,
              ),
            ),
            SizedBox(height: 5.v),
            CustomTextFormField(
              controller: phoneNumberController,
              hintText: "enter your Phone Number",
              textInputType: TextInputType.phone,
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "Password",
                style: CustomTextStyles.titleSmallInterPrimary,
              ),
            ),
            SizedBox(height: 3.v),
            CustomTextFormField(
              controller: passwordController,
              hintText: "enter your password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              suffix: IconButton(
                onPressed: () {},
                icon: Icon(
                  (Icons.remove_red_eye),
                ),
              ),
            ),
            TextButton(
              child: Text(
                "Forget your Password?",
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black,
                )
              ),
              onPressed: () {
                Get.bottomSheet(ForgotPasswordBottomsheet(),
                    isScrollControlled: true, elevation: 100);
                /*  Navigator.of(context)
                    .pushNamed(AppRoutes.forgotPasswordBottomsheet);*/
              },
            ),
            SizedBox(height: 7.v),
            CustomElevatedButton(
              onPressed: () {
                navigateTo(context,Bottom_Nav_bar());
              },
              text: "Login",
              margin: EdgeInsets.only(
                left: 36.h,
                right: 24.h,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPoweredBySection(BuildContext context) {
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
