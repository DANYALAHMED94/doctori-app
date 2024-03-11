import 'package:doctari/patientFlow/onboarding_screens/register_as_screen/register_as_screen.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/app_export.dart';

class OnboardingScreenThreeScreen extends StatelessWidget {
  const OnboardingScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          // width: 375.h,
          child: Column(
            children: [
              _buildImage(context),
              SizedBox(height: 92.v),
              Text(
                "Easy Appointments",
                style: theme.textTheme.headlineMedium,
              ),
              Container(
                width: 275.h,
                margin: EdgeInsets.only(
                  left: 52.h,
                  right: 47.h,
                ),
                child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBluegray50014.copyWith(
                    height: 1.66,
                  ),
                ),
              ),
              SizedBox(height: 48.v),
              CustomElevatedButton(
                text: "Get Started",
                onPressed: () {
                  // Navigator.pushReplacementNamed(
                  //     context, AppRoutes.registerAsScreen);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => RegisterAsScreen())));
                },
                margin: EdgeInsets.symmetric(horizontal: 40.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle:
                    CustomTextStyles.titleMediumOnErrorContainerSemiBold18,
              ),
              SizedBox(height: 16.v),
              Text(
                "Skip",
                style: CustomTextStyles.bodyMediumBluegray50014_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 400.v,
        width: 356.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse153295x238,
              height: 295.v,
              width: 238.h,
              alignment: Alignment.topLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1541,
              height: 336.adaptSize,
              width: 336.adaptSize,
              radius: BorderRadius.circular(
                168.h,
              ),
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}
