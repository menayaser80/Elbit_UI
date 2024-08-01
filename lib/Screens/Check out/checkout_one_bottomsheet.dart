
import 'package:elbit_ui/Screens/Search/widget/custom%20text%20form%20field.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';
import '../../widget/product_details/customtext.dart';


// ignore_for_file: must_be_immutable
class CheckoutOneBottomsheet extends StatelessWidget {
  CheckoutOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: commentController,
      hintText: "Type here any additional comment ",
      hintStyle: CustomTextStyles.labelLargeTajawalBluegray300,
      textInputAction: TextInputAction.done,
      maxLines: 5,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
      fillColor: theme.colorScheme.onPrimary.withOpacity(1),
    );
  }
}
