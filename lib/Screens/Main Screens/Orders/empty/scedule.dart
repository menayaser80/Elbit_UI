
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DefaultScheeduleddOrdersPage extends StatefulWidget {
  const DefaultScheeduleddOrdersPage({Key? key})
      : super(
    key: key,
  );

  @override
  DefaultScheeduleddOrdersPageState createState() =>
      DefaultScheeduleddOrdersPageState();
}

class DefaultScheeduleddOrdersPageState
    extends State<DefaultScheeduleddOrdersPage>
    with AutomaticKeepAliveClientMixin<DefaultScheeduleddOrdersPage> {
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
                child: SvgPicture.asset('assets/images/img_error_in_calendar.svg',),
                height: 173.v,
                width: 220.h,
              ),

              SizedBox(height: 22.v),
              Text(
                "You have no Scheduled Orders",
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
