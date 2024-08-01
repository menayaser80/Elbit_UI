
import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class LoadingConfirmationDialog extends StatelessWidget {
  const LoadingConfirmationDialog({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.h,
      padding: EdgeInsets.symmetric(
        horizontal: 50.h,
        vertical: 45.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 66.adaptSize,
            width: 66.adaptSize,
            padding: EdgeInsets.all(5.h),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFFE33629).withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                 'assets/images/img_video_camera.svg'
                ),
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 217.h,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: Text(
              "Are you sure you want to cancel your Order?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme
                  .textTheme.headlineSmall
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(

              children: [
                Container(
                  width: 100.h,
                  height:39.v,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      width: 1,
                      color: Color(0XFF8797A8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Don’t Cancel",
                      style:
                     CustomTextStyles.titleMediumBluegray300,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 100.h,
                  height:39.v,
                  decoration: BoxDecoration(
                    color: Color(0XFFE33629),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "Yes, Cancel",
                      style:TextStyle(
                        fontFamily: 'Tajawal'
                            ,color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0
                      )

                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
