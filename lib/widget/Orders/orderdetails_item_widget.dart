
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  const OrderdetailsItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment:Alignment.centerLeft,
              width: 103.h,
              height: 27.v,
              decoration: BoxDecoration(
                color: Color(0XFFFFF844),
                borderRadius: BorderRadius.circular(25.0)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 4.h),
                    child:  Container(
                      child: SvgPicture.asset('assets/images/img_user.svg'),
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                    ),
                  ),
                  Center(
                    child: Text('Scheduled',style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF506173),
                    ),),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 8.v),
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
                    "#163252",
                    style: theme.textTheme.titleSmall,
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
                    style: theme.textTheme.titleSmall,
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
                          text: "960.00 ",
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
                    "30/01/24",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 14.v),
          InkWell(
            onTap: (){
         
            },
            child: Text(
              "Cancel Order",
              style: CustomTextStyles.bodyMediumRed600,
            ),
          ),
        ],
      ),
    );
  }
}
