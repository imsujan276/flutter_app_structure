import 'package:car_juggle_photo_app/app/constants/app_colors.dart';
import 'package:car_juggle_photo_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

/// custom text input field widget
class InputField extends StatefulWidget {
  const InputField({
    this.label,
    this.hintText,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.icon,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  });

  final IconData? icon;
  final String? hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final validator;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final String? label;
  final controller;
  final autovalidateMode;

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  ///toggle status for passsword eye
  bool showPassword = false;

  /// toggle status for password field
  bool shownPassword = false;

  @override
  void initState() {
    super.initState();
    shownPassword = widget.obscureText;
  }

  /// toggle password view
  void togglePassword() {
    setState(() {
      showPassword = !showPassword;
      shownPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (new Container(
      margin: new EdgeInsets.only(
        bottom: Constants.defaultPadding,
        top: Constants.defaultPadding,
      ),
      child: TextFormField(
        controller: widget.controller ?? null,
        autovalidateMode: widget.autovalidateMode,
        decoration: new InputDecoration(
          contentPadding: widget.icon != null
              ? EdgeInsets.fromLTRB(0, 0, 10, 0)
              : EdgeInsets.fromLTRB(10, 0, 10, 0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.GREY),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.GREY),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.GREY),
          ),
          prefixIcon: widget.icon != null ? new Icon(widget.icon) : null,
          labelText: widget.label ?? null,
          hintText: widget.hintText ?? null,
          hintStyle: TextStyle(
            color: AppColors.GREY,
            fontSize: Constants.defaultFontSize,
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () => togglePassword(),
                  icon: Icon(
                    showPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.GREY,
                  ),
                  splashRadius: 0.1,
                )
              : null,
        ),
        validator: widget.validator ?? null,
        onFieldSubmitted: widget.onFieldSubmitted ?? null,
        onChanged: widget.onChanged ?? null,
        obscureText: shownPassword,
        keyboardType: widget.textInputType,
      ),
    ));
  }
}
