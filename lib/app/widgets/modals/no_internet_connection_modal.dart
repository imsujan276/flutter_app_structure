import 'package:car_juggle_photo_app/app/widgets/texts/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoInternetConnectionModal {
  NoInternetConnectionModal() {
    if (Get.isDialogOpen != true)
      Get.dialog(
        AlertDialog(
          title: Text('No Internet Connection!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.wifi_off_outlined,
                size: 30,
              ),
              SizedBox(
                height: 15,
              ),
              NormalText(
                  'Please make sure you are connected to the internet and its working.'),
            ],
          ),
        ),
        barrierDismissible: true,
      );
  }
}
