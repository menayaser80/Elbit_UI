
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';

import '../../../widget/product_details/decor.dart';

class wishlistbottomsheet  extends StatelessWidget {
  var name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: 120.h,
              child: Divider(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "Rename",
            style: CustomTextStyles.titleLargeOnPrimaryContainer,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0XFFDAE6F2),
            ),
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                hintText: 'Enter a new wishlist name',
                fillColor: Colors.red,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,



            ),
          ),

          SizedBox(height: 22.v),
          Divider(
            color: Colors.grey[200],
          ),

          TextButton(onPressed: (){}, child: Text('set as Default',style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),)),
          Divider(
            color: Colors.grey[200],
          ),
          TextButton(onPressed: (){}, child: Text('Delete wishlist',style: TextStyle(
            color: Colors.red,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),)),
        ],
      ),
    );
  }
}

