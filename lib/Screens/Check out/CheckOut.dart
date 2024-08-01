
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_outlined_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_button_style.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widget/product_details/customtext.dart';


class CheckoutThreeScreen extends StatefulWidget {
  const CheckoutThreeScreen({Key? key}) : super(key: key);
  @override
  State<CheckoutThreeScreen> createState() => _CheckoutThreeScreenState();
}
class _CheckoutThreeScreenState extends State<CheckoutThreeScreen> {
  dynamic _value=1;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 120.h,
                  child: Divider(
                    color: theme.colorScheme.primaryContainer,
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "Cart Summary",
                  style: CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Min Order: 100 ",
                        style: CustomTextStyles.bodyMediumff8797a8,
                      ),
                      TextSpan(
                        text: "EGP",
                        style: CustomTextStyles.bodyMediumff8797a8,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildCartItemsRow(
                    context,
                    subtotalText: "Cart items",
                    priceText: "6 Items",
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildCartItemsRow(
                    context,
                    subtotalText: "Subtotal",
                    priceText: "150 EGP",
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildCartItemsRow(
                    context,
                    subtotalText: "Delivery Fees",
                    priceText: "50 EGP",
                  ),
                ),
                SizedBox(height: 19.v),
                Divider(
                  color: appTheme.black900,
                ),
                SizedBox(height: 7.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Total Fees",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "200.00",
                            style: CustomTextStyles.titleLargeBold,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "EGP",
                            style: CustomTextStyles.titleLargeBold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                        width: 167.h,
                        text: "Add Items",
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL19,
                      ),
                      CustomElevatedButton(
                        height: 39.v,
                        width: 166.h,
                        text: "CheckOut",
                        buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                        buttonTextStyle: CustomTextStyles.titleMediumInterGray10001,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.v),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
                children: [
                  _buildAppBar(context),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 115.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: appTheme.gray10001,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(image: AssetImage('assets/images/img_checkout_three.png'),
                                      fit: BoxFit.cover,
                                      width: 110,

                                    ),
                                  ),

                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15),
                                        child: Row(
                                          children: [
                                            Text('Address Details',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                color: Colors.black
                                            ),),
                                            Spacer(),
                                            InkWell(
                                              onTap: (){

                                              },
                                              child: Column(
                                                children: [
                                                  Text('Change',style: TextStyle(
                                                    fontSize: 12.0,
                                                    color:appTheme.blueGray60001,

                                                  ),
                                                  ),
                                                  SizedBox(
                                                    width: 36.h,
                                                    child: Divider(
                                                      indent: 1.h,
                                                      endIndent: 1.h,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                      Text('Mariam',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.black
                                      ),),
                                      Text('132Bigtown BG23 4YZ England',style: TextStyle(

                                        fontSize: 14.0,
                                        color: Colors.black,

                                      ),
                                        maxLines: 1,
                                      ),
                                      Text('26 November 2023',style: TextStyle(

                                        fontSize: 14.0,
                                        color: Colors.black,

                                      ),
                                        maxLines: 1,
                                      ),
                                      Text('01030659884',style: TextStyle(

                                        fontSize: 14.0,
                                        color: Colors.black,

                                      ),

                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 130.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray10001,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Payment Method',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Color(0XFF142433)
                                      ),),
                                      Row(
                                        children: [
                                          Radio(
                                              value:1 ,
                                              groupValue:_value ,
                                              onChanged: (value){
                                                setState(() {
                                                  _value=value;
                                                });
                                              }
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text('Credit Card',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Color(0XFF142433)
                                          ),),SizedBox(
                                            width: 5.0,
                                          ),
                                          Image(image: AssetImage('assets/images/visa.png')),
                                          Spacer(),
                                          InkWell(
                                            onTap: (){

                                            },
                                            child: Column(
                                              children: [
                                                Text('Edit Card',style: TextStyle(
                                                  fontSize: 12.0,
                                                  color:appTheme.blueGray60001,

                                                ),
                                                ),
                                                SizedBox(
                                                  width: 40.h,
                                                  child: Divider(
                                                    indent: 1.h,
                                                    endIndent: 1.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              value:2 ,
                                              groupValue:_value ,
                                              onChanged: (value){
                                                setState(() {
                                                  _value=value;
                                                });
                                              }
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text('Cash On Delivery (COD)',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Color(0XFF142433)
                                          ),),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 44.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          color: Color(0XFF224971),
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Deliver Now',style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Container(
                                      height: 44.0,
                                      width: 162.0,
                                      decoration: BoxDecoration(
                                          color: Color(0XFF224971),
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Deliver With an Hour',style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        showDatePicker(
                                            context:context ,
                                            firstDate:DateTime(1930) ,
                                            lastDate:DateTime(2090) ,
                                          initialDate: DateTime.now()
                                        );
                                      },
                                      child: Container(
                                        height: 44.0,
                                        width: 85.0,
                                        decoration: BoxDecoration(
                                            color: Color(0XFF224971),
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Customize',style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Discount Voucher',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.black
                                    ),),


                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                      child:Row(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child:
                                            Container(
                                              height: 43.0,

                                              child: TextFormField(

                                                  decoration: InputDecoration(
                                                    hintText: 'Enter your discount code here',
                                                    border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(14.0),

                                                    ),
                                                  ),
                                                  keyboardType: TextInputType.emailAddress,
                                                  onChanged: (value)
                                                  {
                                                    print(value);
                                                  }
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: Expanded(
                                              flex: 1,
                                              child: Container(
                                                height: 40.0,
                                                width: 70.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0XFF224971),
                                                  borderRadius: BorderRadius.circular(20.0),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: InkWell(
                                                    onTap: (){},
                                                    child: Text('Apply',style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),


                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Additional Comment',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.black
                                    ),),
                                    TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter your discount code here',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        keyboardType: TextInputType.emailAddress,
                                        onChanged: (value)
                                        {

                                        }
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),



                    ],
                  ),
            
                ],
              ),
          ),
        ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
        decoration: AppDecoration.gradientBlueGrayToBlueGray,
        child: Column(children: [
          CustomAppBar(
              height: 26.v,
              leadingWidth: 48.h,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              centerTitle: true,
              title: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Checkout ",
                        style: CustomTextStyles.headlineSmallff142433),
                    TextSpan(text: "(1/3)", style: theme.textTheme.titleLarge)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 27.v),
          Padding(
              padding: EdgeInsets.only(left: 57.h, right: 47.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 18.v,
                    width: 191.h,
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 6.v),
                              child: SizedBox(
                                  width: 144.h,
                                  child: Divider(
                                      color: theme.colorScheme.primary,
                                      indent: 14.h)))),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 6.v),
                              child: SizedBox(
                                  width: 45.h,
                                  child: Divider(
                                      color: theme.colorScheme.primary)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 134.h, right: 39.h),
                              padding: EdgeInsets.all(3.h),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(6.h))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: EdgeInsets.only(right: 173.h),
                              padding: EdgeInsets.all(3.h),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius:
                                          BorderRadius.circular(6.h)))))
                    ])),
                SizedBox(
                    height: 18.v,
                    width: 95.h,
                    child: Stack(alignment: Alignment.centerRight, children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 6.v),
                              child: SizedBox(
                                  width: 89.h,
                                  child:
                                      Divider(color: appTheme.blueGray60001)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 77.h),
                              padding: EdgeInsets.all(3.h),
                              decoration: AppDecoration.fillBluegray60001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray60001
                                          .withOpacity(0.5),
                                      borderRadius:
                                          BorderRadius.circular(6.h)))))
                    ]))
              ])),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(left: 43.h, right: 40.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Checkout", style: theme.textTheme.titleSmall),
                    Text("Confirmation", style: theme.textTheme.titleSmall),
                    Text("Delivered", style: theme.textTheme.bodyMedium)
                  ])),
          SizedBox(height: 15.v)
        ]));
  }

  Widget _buildCartItemsRow(
      BuildContext context, {
        required String subtotalText,
        required String priceText,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subtotalText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "150 ",
                style: CustomTextStyles.titleMediumff142433,
              ),
              TextSpan(
                text: "EGP",
                style: CustomTextStyles.titleMediumff142433,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
