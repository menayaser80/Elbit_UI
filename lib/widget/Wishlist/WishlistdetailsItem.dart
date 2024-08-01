

import 'package:elbit_ui/core/utils/Google%20font.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/app_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WishlistdetailsItem extends StatelessWidget {
  const WishlistdetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage('assets/images/botels.png'),
              fit: BoxFit.fill,
              width: 90,
              height: 70,
            ),
          ),
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text(
    'Product Name -Details',
    style: SafeGoogleFont (
      'Tajawal',
      fontSize: 15,
      fontWeight: FontWeight.w400,

      color: Color(0xff506173),
    ),
  ),
  Row(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    RichText(
      text: TextSpan(
        style: SafeGoogleFont (
          'Tajawal',
          fontSize: 16*ffem,
          fontWeight: FontWeight.w400,
          height: 1.2000000477*ffem/fem,
          color: Color(0xff142433),
        ),
        children: [
          TextSpan(
            text: '200.00 ',

            style: SafeGoogleFont (
              'Tajawal',
              fontSize: 16*ffem,
              fontWeight: FontWeight.w700,
              height: 1.2*ffem/fem,
              color: Color(0xff142433),
            ),
          ),

        ],
      ),
    ),
    RichText(
      text: TextSpan(
        style: SafeGoogleFont (
          'Tajawal',
          fontSize: 16*ffem,
          fontWeight: FontWeight.w700,
          height: 1.2000000477*ffem/fem,
          color: Color(0xff506173),
        ),
        children: [
          TextSpan(
            text: 'EGP',
            style: SafeGoogleFont (
              'Tajawal',
              fontSize: 12*ffem,
              fontWeight: FontWeight.w400,
              height: 1.2*ffem/fem,
              color: Color(0xff506173),
            ),
          ),

        ],
      ),
    ),
    SizedBox(
      width: 7,
    ),
    RichText(
      text: TextSpan(
        style: SafeGoogleFont (
          'Tajawal',
          fontSize: 16*ffem,
          fontWeight: FontWeight.w400,
          height: 1.2000000477*ffem/fem,
          color: Color(0xff142433),
        ),
        children: [
          TextSpan(
            text: '300.00 ',
            style: SafeGoogleFont (
              'Tajawal',
              fontSize: 13*ffem,
decoration: TextDecoration.lineThrough,
              height: 1.2*ffem/fem,
              color: Colors.grey,
            ),
          ),

        ],
      ),
    ),
    RichText(
      text: TextSpan(
        style: SafeGoogleFont (
          'Tajawal',
          fontSize: 12*ffem,
          fontWeight: FontWeight.w400,
          height: 1.2000000477*ffem/fem,
          color: Color(0xff506173),
        ),
        children: [
          TextSpan(
            text: 'EGP',
            style: SafeGoogleFont (
              'Tajawal',
              fontSize: 12*ffem,
              fontWeight: FontWeight.w400,
              height: 1.2*ffem/fem,
              color: Color(0xff506173),
            ),
          ),

        ],
      ),
    ),
  ],
  ),
  Row(

    children: [
SizedBox(
  width: 165.0,
),
      InkWell(
        onTap: (){},
        child: Icon(
            Icons.favorite_border
        ),
      ),
      SizedBox(width: 6,),
      Image(image: AssetImage('assets/images/add.png'),height: 23,)

    ],
  ),
],
          ),

        ],

      ),

    );
  }
}
