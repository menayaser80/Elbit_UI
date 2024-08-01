
import 'package:elbit_ui/Screens/Check%20out/CheckOut.dart';
import 'package:elbit_ui/Screens/alertDialog/widget/custom_elevated_button.dart';
import 'package:elbit_ui/core/utils/reusable.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(
                left: 24.h, right: 42.h),
child: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
            "Lorem ipsum dolor sit amet consectetur. Aliquam sit ut massa posuere justo suspendisse sagittis mauris hac. Pellentesque turpis condimentum tincidunt venenatis hendrerit et. Penatibus pretium fermentum massa accumsan tristique consequat orci est feugiat. Ac vel semper non at massa faucibus.",
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0XFF142433)
            ),
        ),
    SizedBox(height: 7.v),
  Text("Select size",
            style:
            theme.textTheme.titleMedium),
      Row(
        children: [
          RawChip(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            showCheckmark: false,
            labelPadding: EdgeInsets.zero,
            label: Text(
              "S",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.fSize,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,

              ),
            ),
            selected: false,
            backgroundColor: Colors.transparent,
            selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
            onSelected: (value) {

            },
          ),
          RawChip(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            showCheckmark: false,
            labelPadding: EdgeInsets.zero,
            label: Text(
              "M",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.fSize,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,

              ),
            ),
            selected: false,
            backgroundColor: Colors.transparent,
            selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
            onSelected: (value) {},
          ),
          RawChip(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            showCheckmark: false,
            labelPadding: EdgeInsets.zero,
            label: Text(
              "L",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.fSize,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,

              ),
            ),
            selected: false,
            backgroundColor: Colors.transparent,
            selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
            onSelected: (value) {},
          ),
          RawChip(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            showCheckmark: false,
            labelPadding: EdgeInsets.zero,
            label: Text(
              "XL",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.fSize,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,

              ),
            ),
            selected: false,
            backgroundColor: Colors.transparent,
            selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
            onSelected: (value) {},
          ),
          SizedBox(
            width: 5,
          ),
          RawChip(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
            ),
            showCheckmark: false,
            labelPadding: EdgeInsets.zero,
            label: Text(
              "XXL",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.fSize,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,

              ),
            ),
            selected: false,
            backgroundColor: Colors.transparent,
            selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
            onSelected: (value) {},
          ),
        ],
      ),
  Text("Select color",
            style:
            theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
     Row(
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 3),
           child: InkWell(
             onTap: (){},
             child: Image(image: AssetImage(
               'assets/images/red.png'
             )),
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 3),
           child: InkWell(
             onTap: (){},
             child: Image(image: AssetImage(
                'assets/images/purple.png'
             )),
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 3),
           child: InkWell(
             onTap: (){},
             child: Image(image: AssetImage(
                 'assets/images/black.png'
             )),
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 3),
           child: InkWell(
             onTap: (){

             },
             child: Image(image: AssetImage(
                 'assets/images/green.png'
             )),
           ),
         ),
       ],
     ),
      SizedBox(
          height: 10.v
      ),
      Row(
        children: [
          Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
                border: Border.all(
                  color: Color(0XFF224971),
                  width: 1.4,
                )
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: (){},
                child: Icon(Icons.minimize_rounded,
                color: Colors.black,),
              ),
            ),
          ),
        ),
Text('1',style: TextStyle(
  color: Colors.black,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
),),
          SizedBox(
            width: 17.0,
          ),
          Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color:Color(0XFF224971)
            ),
            child: Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){},
                child: Icon(Icons.add,
                  color: Colors.white,),
              ),
            ),
          ),

        ],
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price", style: theme.textTheme.bodyMedium),
                      SizedBox(height: 1.v),
                      SizedBox(
                          height: 25.v,
                          width: 60.h,
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "400.00 ",
                                              style: CustomTextStyles
                                                  .bodyMediumff506173),

                                        ]),
                                        textAlign: TextAlign.left)),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding:
                                        EdgeInsets.only(top: 4.v),
                                        child: SizedBox(
                                            child: Divider(
                                                color:
                                                appTheme.black900))))
                              ])),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "300.00 ",
                                style: theme.textTheme.titleLarge),
                            TextSpan(
                                text: "EGP",
                                style: theme.textTheme.titleLarge)
                          ]),
                          textAlign: TextAlign.left)
                    ])),
            CustomElevatedButton(
                onPressed: (){
                  navigateTo(context, CheckoutThreeScreen());

                },
                height: 50.0,
                width: 220.h,
                text: "Add to Cart",
                margin: EdgeInsets.only(top: 8.v, bottom: 21.v))
          ]),

    ],
  ),
),
    );
  }
}
