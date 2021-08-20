import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:car_juggle_photo_app/app/modules/auth/controllers/auth_controller.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/validators.dart';
import 'package:car_juggle_photo_app/app/widgets/buttons/custom_button.dart';
import 'package:car_juggle_photo_app/app/widgets/input%20fields/input_field.dart';
import 'package:car_juggle_photo_app/app/widgets/texts/texts.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthLoginWidget extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding,
              vertical: Constants.defaultPadding + 10),
          child: ListView(
            children: [
              _signInHeader(),
              SizedBox(
                height: 20,
              ),
              _signinForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            LargeText("sign_in".tr),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => controller.isLoginForm.value = false,
              child: NormalText(
                "i_have_account".tr,
                hasUnderline: true,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _signinForm() {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NormalText(
            "email".tr,
          ),
          InputField(
            controller: controller.email,
            validator: (string) => validateEmail(string: string),
            textInputType: TextInputType.emailAddress,
          ),
          NormalText(
            "password".tr,
          ),
          InputField(
            controller: controller.password,
            validator: (string) => validatePassword(string: string),
            obscureText: true,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomRaisedButton(
              label: "sign_in".tr,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await controller.loginWithEmail();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
