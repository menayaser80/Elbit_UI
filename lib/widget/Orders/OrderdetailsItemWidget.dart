
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_outlined_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';





// ignore: must_be_immutable
class OrderdetailsItem extends StatelessWidget {
  const OrderdetailsItem({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment:Alignment.centerLeft,
              width: 102.h,
              height: 24.v,
              decoration: BoxDecoration(
                  color: Color(0XFFECFAEB),
                  borderRadius: BorderRadius.circular(25.0)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 4.h),
                    child:  Container(
                      child: Image.asset('assets/images/Group 327.png'),
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                    ),
                  ),
                  Center(
                    child: Text('Delivered',style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,

                      color: Color(0XFF24CA20),
                    ),),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 48.h,
                    child: Text(
                      "Order Number",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "#123652",
                    style:TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold

                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 51.h,
                    child: Text(
                      "Payment Method",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "Visa",
                    style:TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 47.h,
                    child: Text(
                      "Total Amount",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "880.00 ",
                          style: CustomTextStyles.titleSmallff142433,
                        ),
                        TextSpan(
                          text: "EGP",
                          style: CustomTextStyles.titleSmallff142433,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 47.h,
                    child: Text(
                      "Delivery Date",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "18/01/24",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(
                  width: 157.h,
                  text: "Give a Feedback",
                  onPressed: (){},
                ),
                CustomElevatedButton(
                  height: 37.v,
                  width: 115.h,
                  text: "Re-Order",
                  onPressed: (){},
                  buttonTextStyle: CustomTextStyles.titleSmallGray100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
