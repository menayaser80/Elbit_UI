
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/widget/Orders/orderdetails_item_widget.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/theme_helper.dart';


// ignore_for_file: must_be_immutable
class ScheduledOrdersPage extends StatefulWidget {
  const ScheduledOrdersPage({Key? key})
      : super(
    key: key,
  );

  @override
  ScheduledOrdersPageState createState() => ScheduledOrdersPageState();
}

class ScheduledOrdersPageState extends State<ScheduledOrdersPage>
    with AutomaticKeepAliveClientMixin<ScheduledOrdersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildOrderDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
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
            padding: EdgeInsets.symmetric(vertical: 2.0.v),
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
        itemCount: 2,
        itemBuilder: (context, index) {
          return OrderdetailsItemWidget();
        },
      ),
    );
  }
}
