import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:car_juggle_photo_app/app/modules/auth/controllers/auth_controller.dart';
import 'package:car_juggle_photo_app/app/utils/helpers/validators.dart';
import 'package:car_juggle_photo_app/app/widgets/buttons/custom_button.dart';
import 'package:car_juggle_photo_app/app/widgets/input%20fields/input_field.dart';
import 'package:car_juggle_photo_app/app/widgets/texts/large_text.dart';
import 'package:car_juggle_photo_app/app/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthRegisterWidget extends GetView<AuthController> {
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
              _registerHeader(context),
              SizedBox(
                height: 20,
              ),
              _registerForm(context),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            LargeText("create_account".tr),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => controller.isLoginForm.value = true,
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

  Widget _registerForm(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NormalText(
            "full_name".tr,
          ),
          InputField(
            controller: controller.name,
            validator: (string) => validateIsEmpty(string: string),
          ),
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
          NormalText(
            "confirm_password".tr,
          ),
          InputField(
            validator: (value) => confirmPassword(
                password: controller.password.text, cPassword: value),
            obscureText: true,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomRaisedButton(
              label: "sign_up".tr,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // showLoadingWidget();
                  await controller.registerWithEmail();
                  // dismissLoadingWidget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
