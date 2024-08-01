
import 'package:elbit_ui/Screens/Category/categories_tab_container_screen.dart';
import 'package:elbit_ui/Screens/Main%20Screens/productDetails/product_Details.dart';
import 'package:elbit_ui/Screens/Notification/not2.dart';
import 'package:elbit_ui/Screens/Search/search_page.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/reusable.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/Home/adsectionlist_item_widget.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widget/Home/productdetails_item_widget.dart';
import '../../../widget/Home/productdetailslist_item_widget.dart';
import '../../../widget/app_bar/appbar_title_image.dart';
import '../../../widget/app_bar/homecustom.dart';



class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int index;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildAppBar(context),
              SizedBox(height: 10.v),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildAdSectionList(context),
                    SizedBox(height: 22.v),
                    _buildCategoriesRow(context),
                    SizedBox(height: 14.v),
                    _buildCategoriesHorizontalScroll(context),
                    SizedBox(height: 14.v),
                    _buildProductDetailsList(context),
                    SizedBox(height: 12.v),
                    _buildBestSellerRow(context),
                    SizedBox(height: 10.v),
                    _buildHomePageStack(context),
                  ],
                ),
              ))
            ],
          ),
        ),
        // bottomNavigationBar: const CustomBottomAppBarHome(),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            centerTitle: true,
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgLogo,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Container(
                    width: 236.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0XFFDAE6F2),
                    ),
                    child: TextFormField(
                      onTap: (){
                        Get.to(SearchPage());
                      },
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search ",
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),

                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 7.v,
                  ),
                  child: CustomIconButton(
                    height: 47.v,
                    width: 46.h,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillTeal,
                    child: Container(
                      child: SvgPicture.asset(ImageConstant.imgMiFilter),
                    ),
                  ),
                ),
                Container(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomIconButton(
                        height: 47.v,
                        width: 46.h,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.fillTeal,
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          child: InkWell(
                            onTap: (){
                              Get.to(DefaultNotificationPageScreen());
                            },
                            child: SvgPicture.asset(
                                ImageConstant.imgMingcuteNotificationFill),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "3",
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  Widget _buildAdSectionList(BuildContext context) {
    return SizedBox(
      height: 134.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 4.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return AdsectionlistItemWidget();
        },
      ),
    );
  }

  Widget _buildCategoriesRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLine123,
                  height: 2.v,
                  width: 45.h,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                bottom: 4.v,
              ),
              child: InkWell(
                onTap: (){
                  navigateTo(context, CategoriesTabContainerScreen());
                },
                child: Text(
                  "View all",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 24.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 155.h,
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse359,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "Home Pantry",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 183.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 5.v),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse35932x32,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "Home Appliances",
                      style: CustomTextStyles.titleMediumGray100,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 121.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3591,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Text(
                      "Clothing",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 143.h,
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3592,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Text(
                      "Accessories",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 136.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3593,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Text(
                      "Stationery",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 128.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3594,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Text(
                      "Furniture",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 178.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3595,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Text(
                      "Restaurant Tools",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 139.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3596,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Text(
                      "Real Estate",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductDetailsList(BuildContext context) {
    return SizedBox(
      height: 202.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 3.h,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
            navigateTo(context, ProductPageScreen());
              },
              child: ProductdetailslistItemWidget());
        },
      ),
    );
  }

  Widget _buildBestSellerRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 24.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Best Sellers",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 3.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLine123,
                  height: 2.v,
                  width: 45.h,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text(
                "View all",
                style: theme.textTheme.bodyLarge!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomePageStack(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 105.v,
              width: 358.h,
              margin: EdgeInsets.only(top: 17.v),
              decoration: AppDecoration.outlineBlack,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 358.h,
                      margin: EdgeInsets.only(top: 27.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 33.h,
                        vertical: 8.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup32,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              bottom: 3.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                      ImageConstant.imgHeroiconsHomeSolid),
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(left: 1.h),
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Home",
                                  style: CustomTextStyles.titleSmallGray900,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                      ImageConstant.imgMajesticonsListBox),
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(left: 14.h),
                                ),
                                SizedBox(height: 11.v),
                                Text(
                                  "My Orders",
                                  style: CustomTextStyles.bodyMediumGray900,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                      ImageConstant.imgFlatColorIconsLike),
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(left: 8.h),
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "Wishlist",
                                  style: CustomTextStyles.bodyMediumGray900,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 4.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                      ImageConstant.imgIconamoonProfileFill),
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(left: 4.h),
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "Profile",
                                  style: CustomTextStyles.bodyMediumGray900,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 46.adaptSize,
                              width: 46.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.gray100,
                                borderRadius: BorderRadius.circular(
                                  23.h,
                                ),
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.topRight,
                            child: CustomImageView(),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCartIcon,
                            height: 22.v,
                            width: 26.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              bottom: 10.v,
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
            alignment: Alignment.center,
            child: Container(
              height: 115.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.gray100.withOpacity(0),
                    appTheme.gray100,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 210.v,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 20.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 3.h,
                  );
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ProductdetailsItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
