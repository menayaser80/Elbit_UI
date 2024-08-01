
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// ignore_for_file: must_be_immutable
class DeliveryFeedbackDialog extends StatelessWidget {
  const DeliveryFeedbackDialog({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return _buildDeliveredContent(context);
  }

  /// Section Widget
  Widget _buildDeliveredContent(BuildContext context) {
    return
      Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 306.v,
          width: 342.h,
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                child: SvgPicture.asset('assets/images/img_ph_x_bold.svg'),
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 24.v,
                  right: 24.h,
                ),
              ),
              Container(
                child: SvgPicture.asset('assets/images/img_objects.svg'),
                height: 134.v,
                width: 342.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 45.h,
                    right: 45.h,
                    bottom: 30.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Thank You!",
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Your Feedback has been Submitted.",
                        style: CustomTextStyles.titleMediumBluegray300,
                      ),
                      SizedBox(height: 34.v),
                      CustomElevatedButton(
                        text: "Continue",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      ],
    );

  }
}
