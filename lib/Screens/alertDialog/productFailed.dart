
import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class ProductPageAlertDialog extends StatelessWidget {
  const ProductPageAlertDialog({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323.h,
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 66.adaptSize,
            width: 66.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFF8797A8),
              shape: BoxShape.circle,

              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                 'assets/images/failed.svg',

                ),
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 211.h,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: Text(
              "Unfortunately, you cannot add items to your basket from another vendor! ",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme
                  .textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 228.h,
            child: Text(
              "You can start a new basket or continue shopping from the same vendor",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            width: 170.h,
            text: "Continue shopping",
          ),
          SizedBox(height: 12.v),
          Container(
width: 170.h,
height:59.v,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                border: Border.all(
                  color:Color(0XFF224971) ,
                  width: 1
                )
              ),
              child: Center(
                child: Text('Start a New Basket',style: TextStyle(
                  color: Color(0XFF224971) ,
                  fontSize: 14.0,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),),
              )),
          // CustomOutlinedButton(
          //   text: "Start a New Basket",
          //   margin: EdgeInsets.symmetric(horizontal: 32.h),
          // ),
        ],
      ),
    );
  }
}
