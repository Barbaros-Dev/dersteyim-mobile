import 'package:dersteyim_mobile/core/app_export.dart';
import 'package:dersteyim_mobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:dersteyim_mobile/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:dersteyim_mobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dersteyim_mobile/widgets/app_bar/custom_app_bar.dart';
import 'package:dersteyim_mobile/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: Container(
          width: 326.h,
          margin: EdgeInsets.fromLTRB(52.h, 36.v, 52.h, 5.v),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yoklama Al",
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 13.v,
                    width: 18.h,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      top: 7.v,
                      bottom: 8.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.v),
              Container(
                width: 205.h,
                margin: EdgeInsets.only(right: 80.h),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum dapibus risus non sagittis.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                height: 25.v,
                width: 42.h,
                text: "Git",
                buttonStyle: CustomButtonStyles.fillWhiteA,
                buttonTextStyle: theme.textTheme.labelLarge!,
              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 63.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage1,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.fromLTRB(23.h, 26.v, 17.h, 9.v),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgImage2,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 17.v,
            right: 40.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
