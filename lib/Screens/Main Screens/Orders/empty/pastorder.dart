
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// ignore_for_file: must_be_immutable
class DefaultPasttOrdersPage extends StatefulWidget {
  const DefaultPasttOrdersPage({Key? key})
      : super(
    key: key,
  );

  @override
  DefaultPasttOrdersPageState createState() =>
      DefaultPasttOrdersPageState();
}

class DefaultPasttOrdersPageState
    extends State<DefaultPasttOrdersPage>
    with AutomaticKeepAliveClientMixin<DefaultPasttOrdersPage> {
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
              SizedBox(height: 155.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.h),
                child: Column(
                  children: [
                    Container(
                      child: SvgPicture.asset('assets/images/img_delayed.svg',),
                      height: 173.v,
                      width: 220.h,
                    ),

                    SizedBox(height: 22.v),
                    Text(
                      "You have no Past Orders",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 25.v),
                    CustomElevatedButton(
                      width: 158.h,
                      text: "Shop Now",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
