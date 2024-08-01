

import 'package:elbit_ui/Screens/auth/reset_password_bottomsheet.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:elbit_ui/widget/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_decoration.dart';
import '../../theme/homehelper.dart';

class VerificationCodeBottomsheet extends StatelessWidget {
  const VerificationCodeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 54.h,
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
          SizedBox(height: 34.v),
          Text(
            "Verification Code",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 222.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 29.h,
            ),
            child: Text(
              "Enter below the 4-digit code that you received on your email",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            child: CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "Continue",
            onPressed: () {
              Get.back();
              Get.bottomSheet(ResetPasswordBottomsheet(),
                  isScrollControlled: true, elevation: 100);
            },
          ),
          SizedBox(height: 13.v),
          InkWell(
            onTap: (){},
            child: Text(
              "Resend Code",
              style: theme.textTheme.bodyMedium!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 63.v),
        ],
      ),
    );
  }
}
