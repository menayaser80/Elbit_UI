
import 'package:elbit_ui/Screens/Feedback/custom_text_form_field.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/image_constant.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:elbit_ui/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Feedbaack extends StatefulWidget {
  Feedbaack({Key? key})
      : super(
    key: key,
  );

  @override
  State<Feedbaack> createState() => _FeedbaackState();
}

class _FeedbaackState extends State<Feedbaack> {
  String reasonsBehindCancellation = "";

  TextEditingController reviewInputController = TextEditingController();
  dynamic _value=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 18.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: SvgPicture.asset(ImageConstant.imgSettings,),
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                ),

                SizedBox(height: 9.v),
                SizedBox(
                  width: 168.h,
                  child: Text(
                    "We're Sorry for the Inconvenience",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 15.v),
                Container(
                  width: 274.h,
                  margin: EdgeInsets.only(
                    left: 34.h,
                    right: 33.h,
                  ),
                  child: Text(
                    "Your feedback is valuable to us, so please let us know why you've canceling your order.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBluegray600,
                  ),
                ),
                SizedBox(height: 41.v),
                _buildFeedbackForm(context),
                SizedBox(height: 42.v),
                CustomElevatedButton(
                  onPressed: (){},
                  text: "Submit Feedback",
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 17.h,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 389.h,

      leading: Container(
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: SvgPicture.asset(ImageConstant.imgVector,
          ),
        ),
        margin: EdgeInsets.fromLTRB(32.h, 6.v, 351.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reasons behind Cancellation : ",
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Radio(
                        value:1 ,
                        groupValue:_value ,
                        onChanged: (value){
                          setState(() {
                            _value=value;
                          });
                        }
                    ),

                    Text('Decided to go with a different product or service.',style:

                     theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value:2 ,
                        groupValue:_value ,
                        onChanged: (value){
                          setState(() {
                            _value=value;
                          });
                        }
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Confirmation is taking too long",
                      style:  theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value:3 ,
                        groupValue:_value ,
                        onChanged: (value){
                          setState(() {
                            _value=value;
                          });
                        }
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Another Reason:',style:  theme.textTheme.bodyMedium,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 4.h,
            ),
            child: CustomTextFormField(
              controller: reviewInputController,
              hintText: "Type your Review",
              textInputAction: TextInputAction.done,
              maxLines: 8,
            ),
          ),
        ],
      ),
    );
  }
}
