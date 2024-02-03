import 'package:dersteyim_mobile/core/app_export.dart';
import 'package:dersteyim_mobile/widgets/custom_elevated_button.dart';
import 'package:dersteyim_mobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUp3rdStepScreen extends StatelessWidget {
  SignUp3rdStepScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 80.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 25.v,
                                    width: 12.h,
                                    margin: EdgeInsets.only(
                                        top: 11.v, bottom: 20.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 67.h),
                                    child: Text("Kaydol",
                                        style: theme.textTheme.displaySmall))
                              ])),
                      Spacer(flex: 47),
                      CustomTextFormField(
                          width: 282.h,
                          controller: passwordController,
                          hintText: "Şifre",
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          width: 282.h,
                          text: "Kaydol",
                          onPressed: () {
                            onTapKaydol(context);
                          }),
                      Spacer(flex: 52),
                      SizedBox(height: 7.v),
                      Container(
                          width: 250.h,
                          margin: EdgeInsets.symmetric(horizontal: 22.h),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder11),
                          child: Container(
                              height: 22.v,
                              width: 228.h,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(11.h))))
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapKaydol(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
