
import 'package:elbit_ui/Screens/auth/verification_code_bottomsheet.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widget/Home/custom text field.dart';
import '../../widget/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordBottomsheet extends StatelessWidget {
  ForgotPasswordBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 166.h,
            child: Divider(
              color: theme.colorScheme.primaryContainer,
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            "Forgot Password",
            style: CustomTextStyles.titleLargeOnPrimaryContainer,
          ),
          SizedBox(height: 14.v),
          Container(
            width: 282.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 29.h,
            ),
            child: Text(
              "Kindly enter your Email address to send a 4-digit code to Reset your Password.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 34.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Email",
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Mobile number",
                    style: CustomTextStyles.bodyLargeBluegray300,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgLine14,
            height: 2.v,
            width: 39.h,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              controller: emailController,
              textInputAction: TextInputAction.done,
              autofocus: false),
          SizedBox(height: 32.v),
          SizedBox(
            height: 47.v,
            width: 282.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 101.h,
                      top: 10.v,
                    ),
                    child: Text(
                      "Send Code",
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  width: 282.h,
                  text: "Send Code",
                  alignment: Alignment.center,
                  onPressed: () {
                    Get.back();
                    Get.bottomSheet(VerificationCodeBottomsheet(),
                        isScrollControlled: true, elevation: 100);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 58.v),
        ],
      ),
    );
  }
}
