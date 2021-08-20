import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(Constants.defaultmargin),
        child: Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(seconds: controller.duration),
            builder: (context, double value, child) => LinearProgressIndicator(
              value: value,
            ),
          ),
        ),
      ),
    );
  }
}
