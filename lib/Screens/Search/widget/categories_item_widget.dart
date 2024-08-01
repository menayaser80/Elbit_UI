
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart' hide SearchController;

import '../../../theme/theme_helper.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 4.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Home Pantry",
          style: TextStyle(
            color: appTheme.gray900,
            fontSize: 16.fSize,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.indigo800.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.blueGray300,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            14.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
