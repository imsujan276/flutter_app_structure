import 'package:car_juggle_photo_app/app/constants/controllers.dart';
import 'package:car_juggle_photo_app/app/modules/auth/views/pages/otp_page.dart';
import 'package:car_juggle_photo_app/app/routes/app_pages.dart';
import 'package:car_juggle_photo_app/app/widgets/responsive_layout.dart';
import 'package:car_juggle_photo_app/app/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NormalText('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                authController.logout();
              })
        ],
      ),
      body: ResponsiveLayout(
        mobile: GestureDetector(
          onTap: () async {
            // var result = await Get.toNamed(Routes.HOME2, arguments: ["data"]);
            // print(result);
            Get.to(() => OTPPage());
          },
          child: Center(
            child: NormalText(
                ' ${authController.isLoggedIn} Mobile size: ${context.width} x ${context.height}'),
          ),
        ),
        tablet: Center(
          child:
              NormalText('Tablet size: ${context.width} x ${context.height}'),
        ),
      ),
    );
  }
}
