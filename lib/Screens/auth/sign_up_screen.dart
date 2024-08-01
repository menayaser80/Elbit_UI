
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/routes/app_routes.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';
import '../../widget/Home/custom text field.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
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
                          alignment: Alignment.topRight,
                          children: [
                            _buildPhoneNumberSection(context),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 160.v,
                                  right: 140.h,
                                ),
                                child: Text(
                                  "Sign Up",
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black,
                                 ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img2272x194,
                              height: 272.v,
                              width: 194.h,
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "Continue as A Guest",
                      style: CustomTextStyles.titleMediumPrimary.copyWith(
                        decoration: TextDecoration.underline,
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
                    SizedBox(height: 15.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already Have an Account? ', style: CustomTextStyles.bodyMediumff000000,),
                        TextButton(onPressed: (){
                          Navigator.of(context)
                              .pushNamed(AppRoutes.loginScreen);
                        }, child: Text("Log In", style:CustomTextStyles.titleSmallff224971.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                        ),
                        ),
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

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "Phone Number",
                  style: CustomTextStyles.titleSmallPrimaryExtraBold,
                ),
              ),
            ),
            SizedBox(height: 5.v),
            CustomTextFormField(
              controller: phoneNumberController,
              hintText: "enter your Phone Number",
              textInputType: TextInputType.phone,
            ),
            SizedBox(height: 14.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "New Password",
                  style: CustomTextStyles.titleSmallInterPrimary,
                ),
              ),
            ),
            SizedBox(height: 3.v),
            CustomTextFormField(
              controller: passwordController,
              hintText: "enter your password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: IconButton(
                onPressed: (){},
                icon: Icon(
                  (Icons.remove_red_eye),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 43.v),
            CustomElevatedButton(
              text: "Sign Up",
              onPressed: (){},
              margin: EdgeInsets.only(
                left: 36.h,
                right: 24.h,
              ),
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
