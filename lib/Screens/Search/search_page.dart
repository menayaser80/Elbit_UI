
import 'package:elbit_ui/Screens/Search/search%20sheet.dart';
import 'package:elbit_ui/Screens/Search/widget/categories_item_widget.dart';
import 'package:elbit_ui/Screens/bottom%20navigation%20bar/custom%20bottom%20nav%20bar.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widget/app_bar/custom_app_bar.dart';
import '../../widget/app_bar/homecustom.dart';
import '../../widget/custom_image_view.dart';



// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(),
          floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Badge(
            backgroundColor: Color(0XFF224971),
            largeSize: 20,
            smallSize: 20,
            alignment: Alignment.topRight,
            label: Text('4',style: TextStyle(
                color: Colors.white
            ),),
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              backgroundColor: Color(0XFFDAE6F2),

              onPressed: (){},

              child:
              Image.asset('assets/images/img_cart_icon.png',
                width: 30,
                height: 30,
              ),
              elevation: 0.0,
            ),
          ),
            appBar: _buildAppBar(context),
            body:SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _buildSearchHistoryColumn(context),
                    SizedBox(
                      height: 20,
                    ),
                    _buildRecommendedColumn(context),
                    // Container(
                    //     height: 606.v,
                    //     width: double.maxFinite,
                    //     padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v),
                    //     child: Stack(alignment: Alignment.topLeft, children: [
                    //       _buildSearchHistoryColumn(context),
                    //
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(vertical: 10),
                    //         child: _buildRecommendedColumn(context),
                    //       )
                    //     ])),
                  ],
                ),
              ),
            ),

            
        )
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading:   InkWell(
        onTap: (){
      onTapArrowLeft(context);
    },
    child: Container(
    child: SvgPicture.asset(ImageConstant.imgArrowLeft,
height: 2,
    width: 2),
    margin: EdgeInsets.only(left: 16.h),
    ),
        ),
        title:
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Container(
            width: 295.h,
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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
             horizontal: 9
            ),
            child: InkWell(
            onTap: (){
                Get.back();
                Get.bottomSheet(SearchFilteringExpandedBottomsheet(),
                    isScrollControlled: true, elevation: 100);
              },
              child: CustomIconButton(
                height: 50.v,
                width: 50.h,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillTeal,
                child: Container(
                  child: SvgPicture.asset(ImageConstant.imgMiFilter),
                ),
              ),
            ),
          ),


        ]);
  }

  /// Section Widget
  Widget _buildSearchHistoryColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: SvgPicture.asset(ImageConstant.imgMaterialSymbolsHistory),
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(bottom: 5.v)
                      ),

                      Text("Search History",
                          style: CustomTextStyles.titleSmallBold15),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: (){},
                          child: Text("Clear All",
                              style: CustomTextStyles.bodyLargeGray600.copyWith(
                                  decoration: TextDecoration.underline)),
                        ),
                      )
                    ]),
                SizedBox(height: 16.v),
                Row(
                  children: [
                    Text("Product Name", style: CustomTextStyles.titleSmallBold15
                    .copyWith(color: appTheme.black9007f),),
                    Spacer(),
                    InkWell(
                        onTap: (){},
                        child: Icon(Icons.close)),
                  ],
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Text("Product Name", style: CustomTextStyles.titleSmallBold15
                        .copyWith(color: appTheme.black9007f),),
                    Spacer(),
                    InkWell(
                        onTap: (){},
                        child: Icon(Icons.close)),
                  ],
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Text("Product Name", style: CustomTextStyles.titleSmallBold15
                        .copyWith(color: appTheme.black9007f),),
                    Spacer(),
                    InkWell(
                        onTap: (){},
                        child: Icon(Icons.close)),
                  ],
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Text("Product Name", style: CustomTextStyles.titleSmallBold15
                        .copyWith(color: appTheme.black9007f),),
                    Spacer(),
                    InkWell(
                        onTap: (){},
                        child: Icon(Icons.close)),
                  ],
                ),




              ]),
            )));
  }

  /// Section Widget
  Widget _buildRecommendedColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("Recommended",
                    style:  theme
                          .textTheme.headlineSmall)),
              CustomImageView(
                  imagePath: ImageConstant.imgLine123,
                  height: 2.v,
                  width: 45.h,
                  margin: EdgeInsets.only(left: 8.h)),
              SizedBox(height: 14.v),
              Wrap(
                  runSpacing: 8.v,
                  spacing: 8.h,
                  children: List<Widget>.generate(
                      9, (index) => CategoriesItemWidget()))
            ]));
  }

  /// Common widget
  Widget _buildSearchHistoryRow(
    BuildContext context, {
    required String productName,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(productName,
                  style: CustomTextStyles.titleSmallBold15
                      .copyWith(color: appTheme.black9007f)

              )
          ),
          Container(
    height: 14.adaptSize,
    width: 14.adaptSize,
    margin: EdgeInsets.only(left: 200.h, top: 8.v),
            child: IconButton(
    onPressed: (){},
    icon:Icon(Icons.close),

    ),

    ),



        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
