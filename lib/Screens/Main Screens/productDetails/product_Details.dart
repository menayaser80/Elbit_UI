

import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/Screens/Main%20Screens/productDetails/Description.dart';
import 'package:elbit_ui/Screens/Main%20Screens/productDetails/Reviews.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/routes/app_routes.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:elbit_ui/widget/product_details/decor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class ProductPageScreen extends StatefulWidget {
  const ProductPageScreen({Key? key}) : super(key: key);

  @override
  State<ProductPageScreen> createState() => _ProductPageScreenState();
}

class _ProductPageScreenState extends State<ProductPageScreen>with TickerProviderStateMixin
{
  late TabController controllertab;
  @override
  void initState() {
    super.initState();
    controllertab = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 269.v,
                              width: 262.h,
                              margin: EdgeInsets.only(left: 26.h),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                right: 10.h, bottom: 244.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeft,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      onTap: () {
                                                        onTapImgArrowLeft(context);
                                                      }),
                                                  Text("Product Details",
                                                      style: theme
                                                          .textTheme.headlineSmall)
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPants,
                                        height: 245.v,
                                        width: 186.h,
                                        alignment: Alignment.bottomRight)
                                  ]))),
                      SizedBox(height: 10.v),
                      SizedBox(
                          height: 8.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: theme.colorScheme.primary,
                                  dotColor: theme.colorScheme.primaryContainer,
                                  dotHeight: 8.v,
                                  dotWidth: 8.h))),
                      SizedBox(height: 9.v),
                      SizedBox(
                          height: 505.v,
                          width: double.maxFinite,
                          child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 12.v),
                                    decoration: AppDecoration.outlineBlack.copyWith(
                                        borderRadius:
                                        BorderRadiusStyle.customBorderTL30),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          _buildTwentyOne(context),
                                          SizedBox(height: 10.v),
                                          SizedBox(
                                              height: 30.v,
                                              width: 185.h,
                                              child: TabBar(
                                                  controller: controllertab,
                                                  labelPadding: EdgeInsets.zero,
                                                  labelColor: appTheme.indigo800,
                                                  labelStyle: TextStyle(
                                                      fontSize: 16.fSize,
                                                      fontFamily: 'Tajawal',
                                                      fontWeight: FontWeight.w700),
                                                  unselectedLabelColor: appTheme.indigo800.withOpacity(0.5),
                                                  unselectedLabelStyle: TextStyle(
                                                      fontSize: 16.fSize,
                                                      fontFamily: 'Tajawal',
                                                      fontWeight: FontWeight.w700),
                                                  indicatorColor: appTheme.indigo800,
                                                  tabs: [

                                                    Tab(child: Text("Description")),
                                                    Tab(child: Text("Reviews"))
                                                  ])),
                                          SizedBox(height: 32.v),
                                          Expanded(
                                            child: SizedBox(
                                              height: 886.v,
                                              child: TabBarView(
                                                controller: controllertab,
                                                children: [
                                                  Description(),
                                                  Reviews(),


                                                ],
                                              ),
                                            ),
                                          ),

                                        ]))),

                          ]))
                    ])))));
  }

  Widget _buildTwentyOne(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, right: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("Clothing",
                                style: theme.textTheme.bodyMedium,)),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("High Wasted Sweat Pants",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Color(0XFF142433),
                                    fontSize:15.0,
                                  fontFamily: 'Tajawal',

                                )


                            )),
                        SizedBox(height: 4.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgStar69,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                          color: Color(0XFFF8BD00),),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h, top: 2.v),
                              child: Text("4.5",
                                  style: CustomTextStyles.bodyMediumBlack900)),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 2.v),
                              child: Text("(20 reviews)",
                                  style: theme.textTheme.bodyMedium))
                        ])
                      ]),
                  Padding(
                      padding: EdgeInsets.only(bottom: 18.v),
                      child: CustomIconButton(
                          height: 52.adaptSize,
                          width: 52.adaptSize,
                          padding: EdgeInsets.all(14.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
color: Color(0XFFDAE6F2),
                        ),

                        child: Container(
                            child: SvgPicture.asset(ImageConstant.imgFlatColorIconsLike,
                              color: Colors.white,
                            ),


                          ),
                      ),
                  ),
                ])));
  }


  Widget _buildTwo(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 395.v),
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
            decoration: AppDecoration.outlineBlack900
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 26.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Price", style: theme.textTheme.bodyMedium),
                            SizedBox(height: 1.v),
                            SizedBox(
                                height: 25.v,
                                width: 60.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "400.00 ",
                                                    style: CustomTextStyles
                                                        .bodyMediumff506173),
                                                TextSpan(
                                                    text: "EGP",
                                                    style: CustomTextStyles
                                                        .bodyMediumff506173)
                                              ]),
                                              textAlign: TextAlign.left)),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                              EdgeInsets.only(top: 4.v),
                                              child: SizedBox(
                                                  child: Divider(
                                                      color:
                                                      appTheme.black900))))
                                    ])),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "300.00 ",
                                      style: theme.textTheme.titleLarge),
                                  TextSpan(
                                      text: "EGP",
                                      style: theme.textTheme.titleLarge)
                                ]),
                                textAlign: TextAlign.left)
                          ])),
                  CustomElevatedButton(
                    onPressed: (){
                      Navigator.of(context)
                          .pushNamed(AppRoutes.shoppingCartBottomsheet);
                    },
height: 80.0,
                      width: 220.h,
                      text: "Add to Cart",
                      margin: EdgeInsets.only(top: 8.v, bottom: 21.v))
                ])
        )

    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
