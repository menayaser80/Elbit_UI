
import 'package:elbit_ui/Screens/Feedback/custom_text_form_field.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

void showAlert(context)
{
  TextEditingController reviewInputController = TextEditingController();
  showDialog(context: context,

    builder:(context)
    {
      return AlertDialog(
title:Padding(
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
      );
    }
);
}

