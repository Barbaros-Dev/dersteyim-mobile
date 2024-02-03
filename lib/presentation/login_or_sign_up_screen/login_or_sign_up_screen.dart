import 'package:dersteyim_mobile/core/app_export.dart';
import 'package:dersteyim_mobile/widgets/custom_elevated_button.dart';
import 'package:dersteyim_mobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginOrSignUpScreen extends StatelessWidget {
  LoginOrSignUpScreen({Key? key}) : super(key: key);

  TextEditingController epostavalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 76.v),
                child: Column(children: [
                  Text("Giriş / Kayıt", style: theme.textTheme.displaySmall),
                  Spacer(flex: 43),
                  CustomTextFormField(
                      width: 282.h,
                      controller: epostavalueController,
                      hintText: "E-posta",
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      width: 282.h,
                      text: "Devam et",
                      onPressed: () {
                        onTapDevamEt(context);
                      }),
                  Spacer(flex: 56)
                ]))));
  }

  /// Navigates to the signUp2ndStepScreen when the action is triggered.
  onTapDevamEt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUp2ndStepScreen);
  }
}
