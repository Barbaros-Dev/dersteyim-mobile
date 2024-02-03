import 'package:dersteyim_mobile/core/app_export.dart';
import 'package:dersteyim_mobile/widgets/custom_elevated_button.dart';
import 'package:dersteyim_mobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 68.h, vertical: 79.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 61.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 25.v,
                                    width: 12.h,
                                    margin: EdgeInsets.only(
                                        top: 12.v, bottom: 19.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 49.h),
                                    child: Text("Giriş Yap",
                                        style: theme.textTheme.displaySmall))
                              ])),
                      Spacer(flex: 38),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(children: [
                            Container(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary,
                                    borderRadius: BorderRadius.circular(17.h))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 6.h, top: 7.v, bottom: 4.v),
                                child: Text("user@mail.com",
                                    style: theme.textTheme.titleSmall))
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: CustomTextFormField(
                              controller: passwordController,
                              hintText: "Şifre",
                              textInputAction: TextInputAction.done)),
                      SizedBox(height: 14.v),
                      CustomElevatedButton(
                          text: "Giriş Yap",
                          margin: EdgeInsets.symmetric(horizontal: 6.h),
                          onPressed: () {
                            onTapGiriYap(context);
                          }),
                      Spacer(flex: 61)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapGiriYap(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
