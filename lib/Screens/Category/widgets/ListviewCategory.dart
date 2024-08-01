
import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Listviewcategory extends StatelessWidget {
  const Listviewcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.5),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Color(0XFFFFFFFF)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Stack(children: [
                
                    Image.asset(ImageConstant.imgRectangle5115,),
                    Image.asset('assets/images/30%off.png',width: 55,),
                  ],),
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product Name', style: theme.textTheme.titleMedium!.copyWith(
                      color: appTheme.gray900,
                    ),),
                    Text('Details', style: theme.textTheme.titleLarge!.copyWith(
                      color: appTheme.gray900,
                    ),),

                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('300.00',style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontFamily: 'Tajawal',
                              decoration: TextDecoration.lineThrough,
                              decorationColor:Colors.red,
                              decorationThickness: 1.8,
                            )
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "200.00 ",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "EGP",
                                      style:
                                      TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      )
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(width: 12),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: CustomIconButton(
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            child:SvgPicture.asset(ImageConstant.imgPlus,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

          

            ],
          ),
        ),
      );




  }
}
Widget _buildProductDetails(
    BuildContext context, {
      required String productName,
      required String details,
    }) {
  return SizedBox(
    height: 31.v,
    width: 83.h,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            productName,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            details,
            style: CustomTextStyles.bodySmallBluegray60001.copyWith(
              color: appTheme.blueGray60001,
            ),
          ),
        ),
      ],
    ),
  );
}