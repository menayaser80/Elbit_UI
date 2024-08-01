
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/Screens/auth/Change%20password%20done.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/homehelper.dart';
import '../../widget/Home/custom text field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordBottomsheet extends StatelessWidget {
  ResetPasswordBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
          SizedBox(height: 16.v),
          Text(
            "Reset Password",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 283.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 29.h,
            ),
            child: Text(
              "Set a new password to your account to be able to access your Account.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          SizedBox(height: 32.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "New Password",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            autofocus: false,
            controller: newpasswordController,
            hintText: "........",
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.only(
              left: 18.h,
              top: 11.v,
              bottom: 11.v,
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rewrite Password",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            autofocus: false,
            controller: passwordController,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.all(17.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
          ),
          SizedBox(height: 32.v),
          SizedBox(
            height: 47.v,
            width: 282.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 101.h,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "Send Code",
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  onPressed: () {
                    Get.to(ChangePassword());
                  },
                  width: 282.h,
                  text: "Change Password",
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 68.v),
        ],
      ),
    );
  }
}
