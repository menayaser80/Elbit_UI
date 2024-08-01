import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/homehelper.dart';
import '../../../widget/product_details/decor.dart';



// ignore_for_file: must_be_immutable
class InProgressOrdersPage extends StatefulWidget {
  const InProgressOrdersPage({Key? key})
      : super(
    key: key,
  );

  @override
  InProgressOrdersPageState createState() => InProgressOrdersPageState();
}

class InProgressOrdersPageState extends State<InProgressOrdersPage>
    with TickerProviderStateMixin<InProgressOrdersPage> {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 37.h,
                            right: 19.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 18.v,
                                width: 181.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: SizedBox(
                                          width: 144.h,
                                          child: Divider(
                                            indent: 14.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: SizedBox(
                                          width: 34.h,
                                          child: Divider(),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          left: 134.h,
                                          right: 29.h,
                                        ),
                                        padding: EdgeInsets.all(3.h),
                                        decoration:
                                        AppDecoration.fillIndigo.copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.circleBorder9,
                                        ),
                                        child: Container(
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo800,
                                            borderRadius: BorderRadius.circular(
                                              6.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(right: 163.h),
                                        padding: EdgeInsets.all(3.h),
                                        decoration:
                                        AppDecoration.fillIndigo.copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.circleBorder9,
                                        ),
                                        child: Container(
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo800,
                                            borderRadius: BorderRadius.circular(
                                              6.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 18.v,
                                width: 105.h,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: SizedBox(
                                          width: 99.h,
                                          child: Divider(
                                            color: appTheme.blueGray600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 87.h),
                                        padding: EdgeInsets.all(3.h),
                                        decoration:
                                        AppDecoration.fillBlueGray.copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.circleBorder9,
                                        ),
                                        child: Container(
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.blueGray600
                                                .withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(
                                              6.h,
                                            ),
                                          ),
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
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          right: 12.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Checkout",
                              style:  CustomTextStyles.bodyMediumGray900_1,
                            ),
                            Text(
                              "Confirmation",
                              style:  CustomTextStyles.bodyMediumGray900_1,
                            ),
                            Text(
                              "Delivered",
                              style: CustomTextStyles.bodyMediumGray900_1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.v),
                      _buildDeliveryDetails(context),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Address Details",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildAddressDetails(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Cart Summary",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildCartSummary(context),
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
  Widget _buildDeliveryDetails(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                SizedBox(
                  width: 82.h,
                  child: Text(
                    "Estimated Delivery Time:",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "Today",
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 44,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 50.h,
                    child: Text(
                      "Order \nNumber:",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "#123456",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 55,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 4.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 51.h,
                  child: Text(
                    "Payment\nMethod",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "Visa",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressDetails(BuildContext context) {
    return Container(
      width: 342.h,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "Name:",
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Mariam",
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 85.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Adress:",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "3 Badie El Hamazawy ",
                    style: CustomTextStyles.titleSmallBluegray600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            children: [
              Text(
                "Phone Number:",
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "+20-123456789",
                  style: CustomTextStyles.bodyMediumBluegray600,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCartSummary(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: _buildSix(
              context,
              subtotalText: "Cart items",
              priceText: "3 Items",
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: _buildSix(
              context,
              subtotalText: "Subtotal",
              priceText: "150 EGP",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: _buildSix(
              context,
              subtotalText: "Delivery Fees",
              priceText: "50 EGP",
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: _buildSix(
              context,
              subtotalText: "Voucher Discount",
              priceText: "-20 EGP",
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.black900,
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "Total Fees",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "200.00",
                        style: CustomTextStyles.titleMediumff142433,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "EGP",
                        style: CustomTextStyles.titleMediumff142433,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSix(
      BuildContext context, {
        required String subtotalText,
        required String priceText,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subtotalText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "150 ",
                style: CustomTextStyles.bodyMediumff142433,
              ),
              TextSpan(
                text: "EGP",
                style: CustomTextStyles.bodyMediumff142433,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

}
