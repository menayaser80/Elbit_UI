
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackApprovedScreen extends StatelessWidget {
  const FeedbackApprovedScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 49.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SvgPicture.asset(ImageConstant.imgGroup36665,),
                height: 118.v,
                width: 119.h,
              ),
              SizedBox(height: 34.v),
              Text(
                "Feedback Submitted",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 290.h,
                child: Text(
                  "We appreciate your feedback and look forward to serving you better in the future!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 47.v),
              CustomElevatedButton(
                text: "Return Home",
                margin: EdgeInsets.symmetric(horizontal: 4.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 389.h,
      leading: Container(
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: SvgPicture.asset(ImageConstant.imgVector,
          ),
        ),
        margin: EdgeInsets.fromLTRB(32.h, 6.v, 351.h, 6.v),
      ),
    );
  }
}
