
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// ignore_for_file: must_be_immutable
class FailedOrderDialog extends StatelessWidget {
  const FailedOrderDialog({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.v),
          Align(
alignment: Alignment.topRight,
            child: Container(
              child: SvgPicture.asset('assets/images/close.svg'),
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            child: SvgPicture.asset('assets/images/img_empty_box.svg'),
            height: 220.v,
            width: 279.h,
          ),


          SizedBox(height: 18.v),
          Text(
            "Oops! Order Failed",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 16.v),
          Text(
            "Something went Wrong",
            style: CustomTextStyles.titleMediumBluegray300,
          ),
          SizedBox(height: 46.v),
          CustomElevatedButton(width: 320,
            onPressed: (){},
            text: "Please Try Again",
          ),
          SizedBox(height: 25.v),
          Text(
            "Return Back Home",
            style: theme.textTheme.bodyLarge!,
          ),
          SizedBox(height: 51.v),
        ],
      ),
    );
  }
}
