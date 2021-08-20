import 'package:car_juggle_photo_app/app/constants/controllers.dart';
import 'package:car_juggle_photo_app/app/routes/app_pages.dart';
import 'package:car_juggle_photo_app/app/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home2_controller.dart';

class Home2View extends GetView<Home2Controller> {
  final controller = Get.find<Home2Controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home2View'),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () {
          Get.back(result: "back nuttok");
          return new Future(() => true);
        },
        child: Center(
          child: CustomOutlinedButton(
            label: "back => ${authController.isLoggedIn}",
            onPressed: () {
              Get.back(result: "this is back result");
              // Get.offNamedUntil(Routes.LOGIN, (route) => false);
            },
          ),
        ),
      ),
    );
  }
}
