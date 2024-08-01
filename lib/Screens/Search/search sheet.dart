
import 'package:elbit_ui/Screens/Feedback/custom_text_form_field.dart';
import 'package:elbit_ui/Screens/Search/widget/categories_item_widget.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchFilteringExpandedBottomsheet extends StatefulWidget {
  SearchFilteringExpandedBottomsheet({Key? key})
      : super(
    key: key,
  );

  @override
  State<SearchFilteringExpandedBottomsheet> createState() => _SearchFilteringExpandedBottomsheetState();
}

class _SearchFilteringExpandedBottomsheetState extends State<SearchFilteringExpandedBottomsheet> {
  TextEditingController vendorvalueController = TextEditingController();
  dynamic _value=1;
  double slider=20;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 130.h,
              child: Divider(
                color: theme.colorScheme.primaryContainer,
                thickness: 3,
              ),
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Filter ",
                     style: theme
                          .textTheme.headlineSmall
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 110.h,
                      bottom: 3.v,
                    ),
                    child: InkWell(
                      onTap: (){
                      },
                      child: Text(
                        "Reset",
                          style: theme.textTheme.titleMedium!
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.v),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    title: Row(
                      children: [
                        Text("Category",style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'
                        ),)
                      ],
                    ),
                    children:<Widget>[
                    Column(
                      children: [
                        SizedBox(height: 9.v),
                        _buildCategories(context),
                        SizedBox(height: 16.v),
                        Divider(),
        
                      ],
                    ),
                    ],
                    onExpansionChanged: (bool expanded)
                    {},
                  ),
        
                  ExpansionTile(
                    title: Row(
                      children: [
                        Text("Price Range",style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'
                        ),),
Spacer(),
                        Container(
                          width: 178.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text(
                                  "From:",
                                  style: CustomTextStyles.bodyMediumBluegray600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  bottom: 5.v,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "0 ",
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
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  bottom: 5.v,
                                ),
                                child: Text(
                                  "To:",
                                  style: CustomTextStyles.bodyMediumBluegray600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  bottom: 5.v,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "1250 ",
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    children:<Widget>[
                      SliderTheme(
                        data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          activeTrackColor: theme.colorScheme.primary,
                          inactiveTrackColor: appTheme.gray100,
                          thumbColor: theme.colorScheme.primary,

                          thumbShape: RoundSliderThumbShape(),
                        ),
                        child: Slider(
                          value: slider,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (double value) {
                            setState(() {
slider=value;
                            });
                          },
                        ),
                      ),
                    ],
                    onExpansionChanged: (bool expanded)
                    {},
                  ),
        
        
                  ExpansionTile(
                    title: Row(
                      children: [
                        Text("Vendor",style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'
                        ),)
                      ],
                    ),
                    children:<Widget>[
                      CustomTextFormField(
        
                          hintText: 'enter your favourite vendor name',
                          controller: vendorvalueController),
                    ],
                    onExpansionChanged: (bool expanded)
                    {},
                  ),
        
                  ExpansionTile(
                    title: Row(
                      children: [
                        Text("Customer Review",style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'
                        ),)
                      ],
                    ),
                                    children:<Widget>[
        Column(
          children: [
            Row(
        children: [
          starRate(),
          SizedBox(width: 5.0,),
          Text(
            "5.0",
              style: theme.textTheme.titleMedium!
          ),
          Spacer(),
          Radio(
              value:1 ,
              groupValue:_value ,
              onChanged: (value){
                setState(() {
                  _value=value;
                });
              }
          ),
        ],
            ),
              Row(
                children: [
                  starRatee(),
                  SizedBox(width: 5.0,),
                  Text(
                    "4.0 & up",
                      style: theme.textTheme.titleMedium!
                  ),
                  Spacer(),
                  Radio(
                      value:2 ,
                      groupValue:_value ,
                      onChanged: (value){
                        setState(() {
                          _value=value;
                        });
                      }
                  ),
                ],
              ),
            Row(
        children: [
          starRatie(),
          SizedBox(width: 5.0,),
          Text(
            "3.0 & up",
              style: theme.textTheme.titleMedium!
          ),
          Spacer(),
          Radio(
              value:3 ,
              groupValue:_value ,
              onChanged: (value){
                setState(() {
                  _value=value;
                });
              }
          ),
        ],
            ),
          ],
        ),
                    ],
                    onExpansionChanged: (bool expanded)
                    {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
        
                ],
              ),
            ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Row(
            children: [
        CustomElevatedButton(width: 235,
          onPressed: (){},
          text: "View results",
        ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
Widget _buildCategories(BuildContext context) {
  return Wrap(
    runSpacing: 8.v,
    spacing: 8.h,
    children: List<Widget>.generate(9, (index) => CategoriesItemWidget()),
  );
}
Widget _buildPriceRange(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 4.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 5.v,
          ),
          child: Text(
            "Price Range",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal'
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 175.h,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5.v),
                child: Text(
                  "From:",
                  style: CustomTextStyles.bodyMediumBluegray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  bottom: 5.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "0 ",
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
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  bottom: 5.v,
                ),
                child: Text(
                  "To:",
                  style: CustomTextStyles.bodyMediumBluegray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  bottom: 5.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "1250 ",
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
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
starRate(){

  return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,)

      , onRatingUpdate: (rating)=>debugPrint(rating.toString()));
}
starRatee(){

  return RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,)

      , onRatingUpdate: (rating)=>debugPrint(rating.toString()));
}
starRatie(){

  return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,)

      , onRatingUpdate: (rating)=>debugPrint(rating.toString()));
}
