import 'dart:async';


import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_button_style.dart';
import 'package:elbit_ui/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../theme/custom_text_style.dart';


class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Location Access",
                style: CustomTextStyles.headlineLargeOnPrimaryContainer,
              ),
              SizedBox(height: 18.v),
              _buildMapSection(context),
              SizedBox(height: 21.v),
              SizedBox(
                width: 239.h,
                child: Text(
                  "Enable your location to start ordering now!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeBlack900,
                ),
              ),
              SizedBox(height: 41.v),
              CustomElevatedButton(
                height: 39.v,
                text: "Enable Location",
                margin: EdgeInsets.symmetric(horizontal: 22.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL19,
              ),
              SizedBox(height: 16.v),
              Text(
                "I’ll do it later",
                style: CustomTextStyles.bodyLargePrimary.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 208.v,
      width: 342.h,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
