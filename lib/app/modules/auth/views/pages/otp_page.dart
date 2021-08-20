import 'package:car_juggle_photo_app/app/constants/controllers.dart';

import 'package:car_juggle_photo_app/app/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTPPage'),
      ),
      body: SafeArea(
        child: Center(
          child: CustomRaisedButton(
            label: "Toggle login status",
            onPressed: () => authController.isLoginForm.value = false,
          ),
        ),
      ),
    );
  }
}
