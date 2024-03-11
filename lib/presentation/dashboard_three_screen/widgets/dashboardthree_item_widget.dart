import 'package:doctari/widgets/custom_rating_bar.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/app_export.dart';

// ignore: must_be_immutable
class DashboardthreeItemWidget extends StatelessWidget {
  const DashboardthreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 48.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage87x92,
                  height: 87.v,
                  width: 92.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Aaron Smith",
                        style: CustomTextStyles.titleMediumBluegray9000518,
                      ),
                      Text(
                        "Cardiologist",
                        style: theme.textTheme.bodyMedium,
                      ),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "Cardiology Center, USA",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "",
                              style: CustomTextStyles.titleMediumff0ebe7f,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "28.00",
                              style: CustomTextStyles.bodyLargee5677294,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 17.v,
                    bottom: 1.v,
                  ),
                  child: CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 0,
                  ),
                ),
                _buildBookNow(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookNow(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      width: 112.h,
      text: "Book Now",
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }
}