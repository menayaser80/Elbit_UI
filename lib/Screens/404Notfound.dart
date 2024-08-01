
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
class FourhundredfourScreen extends StatelessWidget {
  const FourhundredfourScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 127.v),
          child: Column(
            children: [
              SizedBox(
                height: 204.v,
                width: 264.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 4.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.h,
                          vertical: 3.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgmem,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 31.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 18.v,
                                    bottom: 22.v,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: SvgPicture.asset( ImageConstant.imgVectorIndigo800,),
                                        height: 3.v,
                                        width: 16.h,
                                      ),

                                      SizedBox(height: 1.v),
                                      Container(
                                        child: SvgPicture.asset( ImageConstant.imgVectorIndigo800),
                                        height: 3.v,
                                        width: 16.h,
                                      ),
                                      SizedBox(height: 2.v),
                                      Container(
                                        child: SvgPicture.asset( ImageConstant.imgVectorIndigo800),
                                        height: 3.v,
                                        width: 16.h,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                        margin: EdgeInsets.only(right: 10.h),
                                        decoration: BoxDecoration(
                                          color: appTheme.teal100,
                                          borderRadius: BorderRadius.circular(
                                            5.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5.v),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: SvgPicture.asset( ImageConstant.imgUser),
                                            height: 6.v,
                                            width: 7.h,
                                            margin: EdgeInsets.only(top: 8.v),
                                          ),
                                          Container(
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 7.h,
                                              bottom: 1.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.teal100,
                                              borderRadius:
                                              BorderRadius.circular(
                                                6.h,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 11.v),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 159.h,
                                          margin: EdgeInsets.only(right: 9.h),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: SvgPicture.asset(ImageConstant.imgVectorTeal100,),
                                                height: 4.v,
                                                width: 5.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 6.v),
                                              ),
                                              Container(
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                margin:
                                                EdgeInsets.only(left: 5.h),
                                                decoration: BoxDecoration(
                                                  color: appTheme.teal100,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    5.h,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                                                height: 3.v,
                                                width: 15.h,
                                                margin:
                                                EdgeInsets.only(top: 9.v),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 22.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 26.h,
                                            margin: EdgeInsets.only(right: 2.h),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 9.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.teal100,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                      4.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize,
                                                  margin:
                                                  EdgeInsets.only(top: 2.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.teal100,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 45.v),
                                        Container(
                                          child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                                          height: 3.v,
                                          width: 15.h,

                                        ),


                                        SizedBox(height: 2.v),
                                        Container(
                                          child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                                          height: 3.v,
                                          width: 15.h,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 11.adaptSize,
                                      width: 11.adaptSize,
                                      margin: EdgeInsets.only(
                                        top: 46.v,
                                        bottom: 13.v,
                                      ),
                                      decoration: BoxDecoration(
                                        color: appTheme.teal100,
                                        borderRadius: BorderRadius.circular(
                                          5.h,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4.h,
                                        bottom: 63.v,
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                                            height: 3.v,
                                            width: 15.h,

                                          ),

                                          SizedBox(height: 1.v),
                                          Container(
                                            child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                                            height: 3.v,
                                            width: 15.h,

                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 179.v,
                        width: 99.h,
                        margin: EdgeInsets.only(bottom: 4.v),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              child: Image.asset(ImageConstant.img404Door,),
                              height: 179.v,
                              width: 99.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 26.h,
                                  right: 3.h,
                                  bottom: 5.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 45.v,
                                      width: 44.h,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Container(
                                            child: SvgPicture.asset(ImageConstant.imgPlay,),
                                            height: 45.v,
                                            width: 44.h,
                                            alignment: Alignment.center,
                                          ),
                                          Container(
                                            child: SvgPicture.asset(ImageConstant.imgProfile,),
                                            height: 23.v,
                                            width: 16.h,
                                            alignment: Alignment.topCenter,
                                            margin: EdgeInsets.only(top: 10.v),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 52.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        decoration: BoxDecoration(
                                          color: appTheme.teal100,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 99.h,
                          top: 3.v,
                          right: 78.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.teal100,
                                    borderRadius: BorderRadius.circular(
                                      3.h,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                                  height: 3.v,
                                  width: 16.h,
                                  margin: EdgeInsets.only(top: 5.v),
                                ),

                              ],
                            ),
                            SizedBox(height: 1.v),
                            Container(
                              child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                              height: 3.v,
                              width: 16.h,
                            ),
                            SizedBox(height: 1.v),
                            Container(
                              child: SvgPicture.asset(ImageConstant.imgVectorIndigo800,),
                              height: 3.v,
                              width: 16.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: SvgPicture.asset(ImageConstant.imgVectorIndigo800),
                      height: 3.v,
                      width: 15.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 64.h,
                        bottom: 3.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(right: 68.h),
                        decoration: BoxDecoration(
                          color: appTheme.teal100,
                          borderRadius: BorderRadius.circular(
                            7.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 67.h,
                          top: 12.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.teal100,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 71.h),
                        child: Row(
                          children: [
                            Container(
                              child: SvgPicture.asset(ImageConstant.imgUser),
                              height: 8.v,
                              width: 9.h,
                            ),
                            Container(
                              child: SvgPicture.asset(ImageConstant.imgVectorTeal100),
                              height: 4.v,
                              width: 5.h,
                              margin: EdgeInsets.only(
                                left: 7.h,
                                bottom: 3.v,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 11.adaptSize,
                        width: 11.adaptSize,
                        margin: EdgeInsets.only(
                          left: 87.h,
                          top: 10.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.teal100,
                          borderRadius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 46.v),
              Text(
                "Page not Found",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 230.h,
                child: Text(
                  "Seems like the page you’re looking for cannot found. Try again later.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 47.v),
              CustomElevatedButton(
                width: 123.h,
                text: "Return Home ",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 389.h,
      leading:  Container(
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: SvgPicture.asset('assets/images/back.svg',
          ),
        ),
        margin: EdgeInsets.fromLTRB(32.h, 6.v, 351.h, 6.v),
      ),
    );
  }
}
