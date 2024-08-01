

import 'package:elbit_ui/Screens/Feedback/custom_text_form_field.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/Screens/auth/login_screen.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/reusable.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:elbit_ui/widget/custom_switch.dart';

import '../../../theme/theme_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../widget/product_details/decor.dart';
import '../../../widget/Wishlist/apppar title.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();



  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse370,
                                  height: 77.adaptSize,
                                  width: 77.adaptSize,
                                  radius: BorderRadius.circular(38.h)),
                              Padding(
                                  padding: EdgeInsets.only(left: 14.h, top: 11.v),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("User1124568",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 1.v),
                                        Text("Delivering to",
                                            style: theme.textTheme.bodyLarge),
                                        Text("Cairo - Nasr City Ha..",
                                            style: CustomTextStyles
                                                .titleMediumBlack900)
                                      ]))
                            ])),
                        SizedBox(height: 16.v),
                        Container(
                          decoration: AppDecoration.fillWhiteA
                              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: ExpansionTile(
                              title: Row(
                            children: [
                              SvgPicture.asset( ImageConstant.imgIconamoonProfileFill),
                              SizedBox(width: 5,),
                              Text("Personal Info",style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tajawal'
                              ),)
                            ],
                          ),
                            children:<Widget>[
                              Column(

                                children: [
                                  Padding(
                                      padding: EdgeInsets.only( right: 16.h),
                                      child:
                                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                          Text("First Name", style: theme.textTheme.titleSmall),
                                          SizedBox(height: 4.v),
                                          CustomTextFormField(
                                              width: 147.h, controller: firstNameController)
                                        ]),
                                        _buildPersonalInfo(context)
                                      ])),
                                  SizedBox(height: 11.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 20.h),
                                          child: Row(children: [
                                            Text("Phone Number", style: theme.textTheme.titleSmall),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4.h, top: 2.v),
                                                child: Text("(Required)",
                                                    style: theme.textTheme.bodyLarge))
                                          ]))),
                                  SizedBox(height: 4.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 20.h, right: 10.h),
                                      child: CustomTextFormField(controller: phoneNumberController)),
                                  SizedBox(height: 11.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 20.h),
                                          child: Row(children: [
                                            Text("Email Address", style: theme.textTheme.titleSmall),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4.h, top: 2.v),
                                                child: Text("(Optional)",
                                                    style: theme.textTheme.bodyLarge))
                                          ]))),
                                  SizedBox(height: 4.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 20.h, right: 10.h),
                                      child: CustomTextFormField(controller: emailController)),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: CustomElevatedButton(
                                      onPressed: (){},
                                      width: 157.h,
                                      text: "Save Changes",
                                    ),
                                  ),
                                ],
                              ),
                               ],
                            onExpansionChanged: (bool expanded)
                            {},
                          ),
                        ),

                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: _buildRecentOrders(context,
                                clockImage: ImageConstant.imgClock,
                                ordersHistoryText: "Orders History",
                                arrowRightImage:
                                ImageConstant.imgArrowRightBlueGray600)),
                        SizedBox(height: 8.v),
                        _buildLogOut(context,
                            image: ImageConstant.imgContrast,
                            text: "Card Details"),
                        SizedBox(height: 8.v),
                        Container(
                          decoration: AppDecoration.fillWhiteA
                              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                SvgPicture.asset( ImageConstant.imgIcOutlinePrivacyTip),
                                SizedBox(width: 6,),
                                Text("Security & Permissions",style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal'
                                ),)
                              ],
                            ),
                            children:<Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 38),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Language", style: theme.textTheme.titleMedium!),
                                        Padding(
                                            padding: EdgeInsets.only(top: 3.v),
                                            child: InkWell(
                                              onTap: (){},
                                              child: Text("English",
                                                  style: CustomTextStyles
                                                      .bodyMediumRobotoBluegray600),
                                            ))
                                      ]),
                                  SizedBox(height: 9.v),
                                  Row(

                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(bottom: 3.v),
                                            child: Text("Notifications",
                                                style: theme.textTheme.titleMedium!)),
                                        Spacer(),
                                        CustomSwitch(
                                            value: isSelectedSwitch,
                                            onChange: (value) {
                                              setState(() {
                                                isSelectedSwitch = value;
                                              });

                                            })
                                      ]),
                                  SizedBox(height: 1.v),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(bottom: 6.v),
                                            child: Text("Location Acess",
                                                style: theme.textTheme.titleMedium!)),
                                        CustomSwitch(
                                            margin: EdgeInsets.only(top: 8.v),
                                            value: isSelectedSwitch1,
                                            onChange: (value) {
                                              setState(() {
                                                isSelectedSwitch1 = value;
                                              });
                                            })
                                      ]),
                                  SizedBox(height: 4.v),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(bottom: 9.v),
                                            child: Text("Face ID",
                                                style: theme.textTheme.titleMedium!)),
                                        CustomSwitch(
                                            margin: EdgeInsets.only(top: 11.v),
                                            value: isSelectedSwitch2,
                                            onChange: (value) {
                                              setState(() {
                                                isSelectedSwitch2 = value;

                                              });
                                            })
                                      ])
                                ]),
                              ),

                            ],
                            onExpansionChanged: (bool expanded)
                            {},
                          ),
                        ),

                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: _buildRecentOrders(context,
                                clockImage: ImageConstant.imgSearch,
                                ordersHistoryText: "Privacy and Policy",
                                arrowRightImage: ImageConstant.imgArrowRight)),
                        SizedBox(height: 8.v),
                        InkWell(
                          onTap: (){
                            navigateTo(context, LoginScreen());
                          },
                          child: _buildLogOut(context,
                              image: ImageConstant.imgMaterialSymbolsLogout,
                              text: "Log Out"),
                        ),
                        SizedBox(height: 8.v)
                      ]),
                ))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,

        leading:   InkWell(
          onTap: (){
            onTapArrowLeft(context);
          },
          child: Container(
            child: SvgPicture.asset(ImageConstant.imgArrowLeft),
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        centerTitle: true,
        title: AppbarTitle(text: "Profile"));
  }

  /// Common widget
  Widget _buildRecentOrders(
      BuildContext context, {
        required String clockImage,
        required String ordersHistoryText,
        required String arrowRightImage,
      }) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
            child: SvgPicture.asset(clockImage),
            height: 24.adaptSize, width: 24.adaptSize,

          ),
          Padding(
              padding: EdgeInsets.only(left: 8.h, bottom: 3.v),
              child: Text(ordersHistoryText,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.gray900))),
          Spacer(),
          Container(
            child: SvgPicture.asset(arrowRightImage),
            height: 12.v,
            width: 6.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
        ]));
  }

  /// Common widget
  Widget _buildLogOut(
      BuildContext context, {
        required String image,
        required String text,
      }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
            child: SvgPicture.asset(image),
              height: 24.adaptSize, width: 24.adaptSize
          ),

          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 4.v),
              child: Text(text,
                  style: CustomTextStyles.titleMediumRobotoRed600
                      .copyWith(color: appTheme.red600)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgIconamoonProfileFill,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, bottom: 4.v),
                    child: Text("Personal Info",
                        style: theme.textTheme.titleMedium)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 6.v,
                    width: 12.h,
                    margin: EdgeInsets.symmetric(vertical: 9.v))
              ])),
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 7.h),
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("First Name", style: theme.textTheme.titleSmall),
                  SizedBox(height: 4.v),
                  CustomTextFormField(
                      width: 147.h, controller: firstNameController,
                  )
                ]),
                _buildPersonalInfo(context)
              ])),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    Text("Phone Number", style: theme.textTheme.titleSmall),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 2.v),
                        child: Text("(Required)",
                            style: theme.textTheme.bodySmall))
                  ]))),
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 10.h),
              child: CustomTextFormField(controller: phoneNumberController)),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    Text("Email Address", style: theme.textTheme.titleSmall),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 2.v),
                        child: Text("(Optional)",
                            style: theme.textTheme.bodySmall))
                  ]))),
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 10.h),
              child: CustomTextFormField(controller: emailController)),
          SizedBox(height: 13.v)
        ]));
  }

   Widget _buildSecurityOptions(BuildContext context) {
     return Container(
         margin: EdgeInsets.only(right: 4.h),
         padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
         decoration: AppDecoration.fillWhiteA
             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
         child: Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                   padding: EdgeInsets.only(right: 11.h),
                   child: Row(children: [
                     CustomImageView(
                         imagePath: ImageConstant.imgIcOutlinePrivacyTip,
                         height: 24.adaptSize,
                         width: 24.adaptSize),
                     Padding(
                         padding: EdgeInsets.only(left: 8.h, bottom: 3.v),
                         child: Text("Security & Permissions",
                             style: CustomTextStyles.titleSmallBold15)),
                     Spacer(),
                     CustomImageView(
                         imagePath: ImageConstant.imgArrowDown,
                         height: 6.v,
                         width: 12.h,
                         margin: EdgeInsets.symmetric(vertical: 9.v))
                   ])),
               SizedBox(height: 12.v),
               Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                 Padding(
                     padding: EdgeInsets.only(left: 32.h),
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Language", style: theme.textTheme.bodyLarge),
                           Padding(
                               padding: EdgeInsets.only(top: 3.v),
                               child: Text("English",
                                   style: CustomTextStyles
                                       .bodyMediumRobotoBluegray600))
                         ])),
                 SizedBox(height: 9.v),
                 Padding(
                     padding: EdgeInsets.only(left: 32.h),
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                               padding: EdgeInsets.only(bottom: 3.v),
                               child: Text("Notifications",
                                   style: theme.textTheme.bodyLarge)),
                           CustomSwitch(
                               margin: EdgeInsets.only(top: 5.v),
                               value: isSelectedSwitch,
                               onChange: (value) {
                                 isSelectedSwitch = value;
                               })
                         ])),
                 SizedBox(height: 7.v),
                 Padding(
                     padding: EdgeInsets.only(left: 32.h),
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                               padding: EdgeInsets.only(bottom: 6.v),
                               child: Text("Location Acess",
                                   style: theme.textTheme.bodyLarge)),
                           CustomSwitch(
                               margin: EdgeInsets.only(top: 8.v),
                               value: isSelectedSwitch1,
                               onChange: (value) {
                                 isSelectedSwitch1 = value;
                               })
                         ])),
                 SizedBox(height: 4.v),
                 Padding(
                     padding: EdgeInsets.only(left: 32.h),
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                               padding: EdgeInsets.only(bottom: 9.v),
                               child: Text("Face ID",
                                   style: theme.textTheme.bodyLarge)),
                           CustomSwitch(
                               margin: EdgeInsets.only(top: 11.v),
                               value: isSelectedSwitch2,
                               onChange: (value) {
                                 isSelectedSwitch2 = value;
                               })
                         ]))
               ]),
               SizedBox(height: 5.v)
             ]));
   }

   Widget _buildPersonalInfo(BuildContext context) {
     return Padding(
         padding: EdgeInsets.only(left: 6.h),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           Padding(
               padding: EdgeInsets.only(left: 2.h),
               child: Text("Last Name", style: theme.textTheme.titleSmall)),
           SizedBox(height: 4.v),
           CustomTextFormField(width: 150.h, controller: lastNameController)
         ]));
   }
}
