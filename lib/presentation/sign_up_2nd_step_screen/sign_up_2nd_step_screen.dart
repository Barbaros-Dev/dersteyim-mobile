import 'package:dersteyim_mobile/core/app_export.dart';
import 'package:dersteyim_mobile/widgets/custom_elevated_button.dart';
import 'package:dersteyim_mobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUp2ndStepScreen extends StatelessWidget {
  SignUp2ndStepScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();

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
                          controller: nameController,
                          hintText: "İsim"),
                      SizedBox(height: 15.v),
                      CustomTextFormField(
                          width: 282.h,
                          controller: surnameController,
                          hintText: "Soyisim",
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          width: 282.h,
                          text: "Devam et",
                          onPressed: () {
                            onTapDevamEt(context);
                          }),
                      Spacer(flex: 52),
                      SizedBox(height: 7.v),
                      Container(
                          height: 22.v,
                          width: 250.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                              borderRadius: BorderRadius.circular(11.h)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(11.h),
                              child: LinearProgressIndicator(
                                  value: 0.5,
                                  backgroundColor: theme.colorScheme.onPrimary,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary))))
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signUp3rdStepScreen when the action is triggered.
  onTapDevamEt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUp3rdStepScreen);
  }
}
