
import 'package:elbit_ui/Screens/Search/search_page.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_image_view.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../widget/custom_bottom_app_bar.dart';
import '../../widget/custom_floating_button.dart';


// ignore_for_file: must_be_immutable
class SearchContainerScreen extends StatelessWidget {
  SearchContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 4.v),
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.searchPage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(routeSetting.name!),
                          transitionDuration: Duration(seconds: 0))),
                  SizedBox(height: 5.v)
                ])),

            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup373,
                    height: 25.0.v,
                    width: 25.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget


  ///Handling route based on bottom click actions


  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }
}
