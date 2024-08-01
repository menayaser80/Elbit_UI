
import 'package:elbit_ui/Screens/Main%20Screens/Orders/order%20progress.dart';
import 'package:elbit_ui/Screens/Main%20Screens/Orders/past%20order.dart';
import 'package:elbit_ui/Screens/Main%20Screens/Orders/scheduled.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:elbit_ui/widget/Wishlist/apppar%20title.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:elbit_ui/widget/product_details/decor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}
class _OrderState extends State<Order>with TickerProviderStateMixin
{
  late TabController controllertab;
  @override
  void initState() {
    super.initState();
    controllertab = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGray,
        child: Column(
          children: [

            SizedBox(
            height: 105.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomAppBar(
                  leadingWidth: 40.h,
                  leading:
                  Container(
                    child: InkWell(
                        onTap: (){
                          onTapArrowLeft(context);
                        },
                        child: SvgPicture.asset(ImageConstant.imgArrowLeft,)),
                    margin: EdgeInsets.only(left: 16.h, bottom: 56.v),
                  ),
                  centerTitle: true,
                  title: AppbarTitle(
                      text: "My Orders", margin: EdgeInsets.only(bottom: 53.v)),
                  styleType: Style.bgFill),
              SizedBox(
                  height: 30.v,
                  width: 343.h,
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
                        Tab(child: Text("In Progress"),
                        ),
                        Tab(child: Text("Scheduled")),
                        Tab(child: Text("Past Orders"))
                      ])),
            ])),
            SizedBox(height: 32.v),
            Expanded(
              child: SizedBox(
                height: 886.v,
                child: TabBarView(
                  controller: controllertab,
                  children: [
                    InProgressOrdersPage(),
                    ScheduledOrdersPage(),
                    PastOrdersPage(),

                  ],
                ),
              ),
            ),
          ],
        ),

      ),
      ),
    );
  }
}

onTapArrowLeft(BuildContext context) {
  Navigator.pop(context);
}