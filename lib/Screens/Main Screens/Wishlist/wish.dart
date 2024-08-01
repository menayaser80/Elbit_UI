
import 'package:elbit_ui/Screens/Main%20Screens/Wishlist/wishlistbottomsheet.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/Wishlist/apppar%20title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/Google font.dart';
import '../../../theme/homehelper.dart';
import '../../../widget/Wishlist/WishlistdetailsItem.dart';
import '../../../widget/app_bar/custom_app_bar.dart';
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
                leadingWidth: 40.h,
                leading:
                Container(
                  child: InkWell(
                      onTap: (){
                       Navigator.pop(context);
                      },
                      child: SvgPicture.asset(ImageConstant.imgArrowLeft,)),
                  margin: EdgeInsets.only(left: 16.h, bottom: 56.v),
                ),
                actions: [
                Padding(
                       padding: const EdgeInsets.only(bottom:  30,
                       right: 25),
                       child: InkWell(
                         onTap: (){},
                         child: Image(image: AssetImage(
                             'assets/images/group-36674-PL7.png',),
                         height: 25,
                         ),
                       ),
                     ),
                ],
                centerTitle: true,
                title: AppbarTitle(
                    text: "Wishlist", margin: EdgeInsets.only(bottom: 53.v)),
                styleType: Style.bgFill),

            Container(
              // frame366738Us (208:11156)
              margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 97*fem, 13*fem),
              width: double.infinity,
              height: 20*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ellipse39547d (208:11157)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 1*fem),
                    width: 13*fem,
                    height: 13*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6.5*fem),
                      color: Color(0xff142433),
                    ),
                  ),
                  Container(
                    // frame36672AgT (208:11158)
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // mynewwishlistihy (208:11159)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                          child: Text(
                            'My New Wishlist',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Tajawal',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2*ffem/fem,
                              color: Color(0xff142433),
                            ),
                          ),
                        ),
                        Container(
                          // itemsdefaultDud (208:11160)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          child: Text(
                            '(4 items)',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Tajawal',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2*ffem/fem,
                              color: Color(0xff506173),
                            ),
                          ),
                        ),
        
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildWishlistDetails(context),
        
          ],
        ),
      ),

    );
  }
}
Widget _buildWishlistDetails(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.h),
    child: ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
          context,
          index,
          ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0.v),
          child: SizedBox(
            width: 314.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.teal50,
            ),
          ),
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: (){
              Get.back();
              Get.bottomSheet(wishlistbottomsheet(),
                  isScrollControlled: true, elevation: 100);
            },
            child: WishlistdetailsItem());
      },
    ),
  );
}