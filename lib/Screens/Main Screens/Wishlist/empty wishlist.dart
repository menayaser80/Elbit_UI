
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyWishlistPage extends StatelessWidget {
  const EmptyWishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 52.h, top: 173.v, right: 52.h),
                child: Column(children: [
                  Container(
                    child: SvgPicture.asset('assets/images/img_illustration.svg'),
                      height: 139.v,
                      width: 162.h
                  ),

                  SizedBox(height: 28.v),
                  Text("You have no items in your Wishlist",
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 99.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: Container(
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: SvgPicture.asset(ImageConstant.imgArrowLeft,
            ),
          ),
          margin: EdgeInsets.only(left: 16.h, top: 4.v),
        ),
        centerTitle: true,
        title:Text("Wishlist",style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Tajawal'
        ),)
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
