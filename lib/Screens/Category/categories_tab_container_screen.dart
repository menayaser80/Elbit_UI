
import 'package:elbit_ui/Screens/Category/categories_page.dart';
import 'package:elbit_ui/Screens/Category/widgets/custom_icon_button.dart';
import 'package:elbit_ui/Screens/Category/widgets/custom_search_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesTabContainerScreen extends StatefulWidget {
  const CategoriesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesTabContainerScreenState createState() =>
      CategoriesTabContainerScreenState();
}

class CategoriesTabContainerScreenState
    extends State<CategoriesTabContainerScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 14.v),
                SizedBox(
                  height: 1033.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 24.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Categories",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                    Container(
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                        child: SvgPicture.asset(
                                          ImageConstant.imgArrowLeft,
                                        ),
                                      ),
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 90.h,
                                        bottom: 3.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18.v),
                              _buildSearchBar(context),
                              SizedBox(height: 26.v),
                              Container(
                                height: 27.v,
                                width: 266.h,
                                margin: EdgeInsets.only(right: 36.h),
                                child: TabBar(
                                  controller: tabviewController,
                                  labelPadding: EdgeInsets.zero,
                                  labelColor: appTheme.indigo800,
                                  labelStyle: TextStyle(
                                    fontSize: 14.fSize,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  unselectedLabelColor:
                                      appTheme.indigo800.withOpacity(0.5),
                                  unselectedLabelStyle: TextStyle(
                                    fontSize: 14.fSize,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  indicatorColor: appTheme.indigo800,
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        "Subcategory",
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        "Subcategory",
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        "Subcategory",
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                              Expanded(
                                child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    Categories(),
                                    Categories(),
                                    Categories(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillTeal,
              child: SvgPicture.asset(ImageConstant.imgMiFilter),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search Product ",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
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
}
