import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';

// ignore: must_be_immutable
class NotificationpageItemWidget extends StatelessWidget {
  const NotificationpageItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
          padding: EdgeInsets.only(left: 10.h, right: 59.h),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin:
                    EdgeInsets.only(top: 2.v, bottom: 66.v),
                    decoration: BoxDecoration(
                        color: appTheme.indigo800,
                        borderRadius:
                        BorderRadius.circular(5.h))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 272.h,
                                  child: Text(
                                      "Lorem ipsum dolor sit amet consectetur. Aliquam sit ut massa posuere justo suspendisse sagittis mauris hac. ",
                                      maxLines: 3,
                                      overflow:
                                      TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeGray900)),
                              SizedBox(height: 2.v),
                              Text("Now",
                                  style:
                                  theme.textTheme.bodyMedium)
                            ])))
              ])),
    );
  }
}
