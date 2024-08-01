
import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/Screens/Check%20out/CheckOut.dart';
import 'package:elbit_ui/Screens/Feedback/custom_text_form_field.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/reusable.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:elbit_ui/widget/custom_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {

    return  Container(

child: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildTop(context),
      SizedBox(height: 13.v),
      _buildSixteen(context),
      SizedBox(height: 26.v),
      Divider(indent: 23.h, endIndent: 24.h),
      SizedBox(height: 19.v),
      _buildReviewButtonAnd(context),
      SizedBox(height: 12.v),
      _buildReview(context),
      SizedBox(height: 14.v),
      Divider(indent: 23.h, endIndent: 25.h),
      SizedBox(height: 9.v),
      _buildReview1(context),
      SizedBox(height: 14.v),
      Divider(indent: 23.h, endIndent: 25.h),
      SizedBox(height: 9.v),
      _buildReview2(context),
      SizedBox(height: 16.v),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
navigateTo(context, CheckoutThreeScreen());
                  },
                  height: 50.0,
                  width: 220.h,
                  text: "Add to Cart",
                  margin: EdgeInsets.only(top: 8.v, bottom: 21.v))
            ]),
      ),
    ],
  ),
),
    );
  }
}
Widget _buildReview2(BuildContext context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse3701,
                height: 45.adaptSize,
                width: 45.adaptSize,
                radius: BorderRadius.circular(22.h),
                margin: EdgeInsets.only(top: 3.v, bottom: 66.v)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildUserAndDate(context,
                              userName: "User125689",
                              date: "20 February 2024"),
                          SizedBox(height: 1.v),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: CustomRatingBar(initialRating: 5)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("(5.0)",
                                    style: CustomTextStyles
                                        .bodyMediumOnPrimaryContainer))
                          ]),
                          SizedBox(height: 6.v),
                          Container(
                              width: 277.h,
                              margin: EdgeInsets.only(right: 11.h),
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Aliquam sit ut massa posuere justo suspendisse sagittis mauris hac. Pellentesque turpis condimentum tincidunt venenatis hendrerit et. ",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyMediumOnPrimaryContainer))
                        ])))
          ]));
}
Widget _buildReview1(BuildContext context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse37045x45,
                height: 45.adaptSize,
                width: 45.adaptSize,
                radius: BorderRadius.circular(22.h),
                margin: EdgeInsets.only(top: 3.v, bottom: 66.v)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildUserAndDate(context,
                              userName: "User125689",
                              date: "20 February 2024"),
                          SizedBox(height: 1.v),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: CustomRatingBar(initialRating: 0)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("(5.0)",
                                    style: CustomTextStyles
                                        .bodyMediumOnPrimaryContainer))
                          ]),
                          SizedBox(height: 6.v),
                          Container(
                              width: 277.h,
                              margin: EdgeInsets.only(right: 11.h),
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Aliquam sit ut massa posuere justo suspendisse sagittis mauris hac. Pellentesque turpis condimentum tincidunt venenatis hendrerit et. ",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyMediumOnPrimaryContainer))
                        ])))
          ]));
}
Widget _buildReview(BuildContext context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse370,
                height: 45.adaptSize,
                width: 45.adaptSize,
                radius: BorderRadius.circular(22.h),
                margin: EdgeInsets.only(top: 3.v, bottom: 66.v)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildUserAndDate(context,
                              userName: "User125689",
                              date: "20 February 2024"),
                          SizedBox(height: 1.v),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: CustomRatingBar(initialRating: 0)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("(5.0)",
                                    style: CustomTextStyles
                                        .bodyMediumOnPrimaryContainer))
                          ]),
                          SizedBox(height: 6.v),
                          Container(
                              width: 277.h,
                              margin: EdgeInsets.only(right: 11.h),
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Aliquam sit ut massa posuere justo suspendisse sagittis mauris hac. Pellentesque turpis condimentum tincidunt venenatis hendrerit et. ",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyMediumOnPrimaryContainer))
                        ])))
          ]));
}
Widget _buildReviewButtonAnd(BuildContext context) {
  TextEditingController reviewInputController = TextEditingController();
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("03 Reviews", style: theme.textTheme.bodyLarge),
        Spacer(),
        Padding(
            padding: EdgeInsets.only(top: 0.1.v),
            child: CustomIconButton(
                height: 16.adaptSize,
                width: 16.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                child: SvgPicture.asset(ImageConstant.imgMingcuteAddFill,height: 30.0,width: 30.0,)
             )
  ),
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: InkWell(
              onTap: (){
                showDialog(context: context,
                    builder: (context)
                {
                  return  AlertDialog(
                    title:Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        right: 4.h,
                      ),
                      child: CustomTextFormField(
                        controller: reviewInputController,
                        hintText: "Type your Review",
                        textInputAction: TextInputAction.done,
                        maxLines: 8,
                      ),
                    ),
                    actions: [
                      CustomElevatedButton(
                        width: 130.h,
                        text: "Post Review",
                      ),
                    ],
                  );
                });

              },
              child: Text("Write a Review",
                  style: CustomTextStyles.titleMediumPrimary),
            ))
      ]));
}
/// Section Widget
Widget _buildSixteen(BuildContext context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
            padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFour(context, dynamicText: "5"),
                  SizedBox(height: 13.v),
                  _buildFour(context, dynamicText: "4"),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildTwo(context, two: "3")),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildTwo(context, two: "2")),
                  SizedBox(height: 14.v),
                  Container(
                      width: 24.h,
                      margin: EdgeInsets.only(right: 2.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1", style: theme.textTheme.bodyMedium),
                            Container(
                              child: SvgPicture.asset(
                                  ImageConstant.imgStar694,),
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.h)
                                ),
                                margin: EdgeInsets.symmetric(vertical: 1.v),
                            ),

                          ]))
                ])),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 8.h, top: 12.v, bottom: 7.v),
                child: Column(children: [
                  Container(
                      height: 4.v,
                      width: 274.h,
                      decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(2.h)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.h),
                          child: LinearProgressIndicator(
                              value: 0.81,
                              backgroundColor: appTheme.blueGray100,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.onPrimaryContainer)))),
                  SizedBox(height: 28.v),
                  Container(
                      height: 4.v,
                      width: 274.h,
                      decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(2.h)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.h),
                          child: LinearProgressIndicator(
                              value: 0.1,
                              backgroundColor: appTheme.blueGray100,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.onPrimaryContainer)))),
                  SizedBox(height: 28.v),
                  Container(
                      height: 4.v,
                      width: 274.h,
                      decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(2.h)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.h),
                          child: LinearProgressIndicator(
                              value: 0.03,
                              backgroundColor: appTheme.blueGray100,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.onPrimaryContainer)))),
                  SizedBox(height: 28.v),
                  SizedBox(
                      height: 4.v,
                      width: 274.h,
                      child: ClipRRect(
                          child: LinearProgressIndicator(value: 0))),
                  SizedBox(height: 28.v),
                  Container(
                      height: 4.v,
                      width: 274.h,
                      decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(2.h)))
                ]))),
        Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("91%", style: theme.textTheme.titleMedium),
                  SizedBox(height: 13.v),
                  Text("7%", style: theme.textTheme.titleMedium),
                  SizedBox(height: 12.v),
                  Text("2%", style: theme.textTheme.titleMedium),
                  SizedBox(height: 13.v),
                  Text("0%", style: theme.textTheme.titleMedium),
                  SizedBox(height: 13.v),
                  Text("0%", style: theme.textTheme.titleMedium)
                ]))
      ]));
}
Widget _buildTop(BuildContext context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 4.v),
                child: Text("4.8", style: theme.textTheme.headlineLarge)),
            Padding(
                padding: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 12.v),
                child: Text("out of 5", style: theme.textTheme.bodyMedium)),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 5.v),
                child: Column(children: [
                  CustomRatingBar(initialRating: 5),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("222 ratings",
                          style: theme.textTheme.bodyMedium))
                ]))
          ]));
}
Widget _buildFour(
    BuildContext context, {
      required String dynamicText,
    }) {
  return SizedBox(
      width: 26.h,
      child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(dynamicText,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: appTheme.blueGray300)),
        Container(
          child: SvgPicture.asset(
            ImageConstant.imgStar694,),
          height: 14.adaptSize,
          width: 14.adaptSize,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.h)
          ),
          margin: EdgeInsets.symmetric(vertical: 1.v),
        ),
      ]));
}

/// Common widget
Widget _buildTwo(
    BuildContext context, {
      required String two,
    }) {
  return SizedBox(
      width: 25.h,
      child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(two,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: appTheme.blueGray300)),
        Container(
          child: SvgPicture.asset(
            ImageConstant.imgStar694,),
          height: 14.adaptSize,
          width: 14.adaptSize,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.h)
          ),
          margin: EdgeInsets.symmetric(vertical: 1.v),
        ),
      ]));
}
Widget _buildUserAndDate(
    BuildContext context, {
      required String userName,
      required String date,
    }) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text(userName,
        style: theme.textTheme.titleMedium!
            .copyWith(color: theme.colorScheme.onPrimaryContainer)),
    Padding(
        padding: EdgeInsets.only(top: 2.v),
        child: Text(date,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: appTheme.blueGray300)))
  ]);
}