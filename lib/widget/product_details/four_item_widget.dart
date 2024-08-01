import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/homehelper.dart';

// ignore: must_be_immutable
class FourItemWidget extends StatelessWidget {
  const FourItemWidget({Key? key})
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
        onSelected: (value) {},
      ),
    );
  }
}
