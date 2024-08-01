
import 'package:elbit_ui/Screens/Feedback/custom_text_form_field.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';


// ignore_for_file: must_be_immutable
class DeliveryFeedbackBottomsheet extends StatelessWidget {
  DeliveryFeedbackBottomsheet({Key? key})
      : super(
    key: key,
  );

  TextEditingController typeFeedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.gradientOnPrimaryToBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: SingleChildScrollView(
          child: Column(
           mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: SvgPicture.asset('assets/images/close.svg'),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    child: Image.asset('assets/images/img_objects.png'),
                    height: 179.v,
                    width: 390.h,
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/img_box_opened.svg'),
                    height: 190.v,
                    width: 241.h,
                  ),
                ],
              ),
              Column(

                children: [
                  SizedBox(height: 16.v),
                  Text(
                                  "Your Order is Delivered",
                                  style: theme.textTheme.headlineSmall,
                                ),
                  SizedBox(height: 18.v),
                              Text(
                                "Rate your experience ",
                                style:  CustomTextStyles.titleMediumff142433,
                              ),
                  SizedBox(height: 6.v),
                  starRate(),
                  SizedBox(height: 46.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                               "Do you have any Feedback?",
                              style: CustomTextStyles.titleMediumff142433,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                                                     "(Optional)",
                                                    style: theme.textTheme.bodyLarge,
                                                  ),
                          ],
                        ),
                      ),

                      SizedBox(height: 6.v),
                                  CustomTextFormField(
                                    controller: typeFeedbackController,
                                    hintText: "Type your Feedback",
                                    textInputAction: TextInputAction.done,
                                    maxLines: 7,
                                  ),
                    ],
                  ),
                ],
              ),



              SizedBox(height: 32.v),
              CustomElevatedButton(
                width: 170.h,
                text: "Submit",
              ),
              SizedBox(height: 32.v),
            ],
          ),
        ),
      ),
    );
  }
  starRate(){

    return RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,)

        , onRatingUpdate: (rating)=>debugPrint(rating.toString()));
  }
}
