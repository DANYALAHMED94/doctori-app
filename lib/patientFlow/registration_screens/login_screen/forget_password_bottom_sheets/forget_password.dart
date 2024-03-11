import 'package:doctari/core/app_export.dart';
import 'package:doctari/patientFlow/registration_screens/login_screen/forget_password_bottom_sheet_two.dart/forget_password_bottom_sheet_two.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/utils/image_constant.dart';
import 'package:doctari/widgets/custom_image_view.dart';
import 'package:doctari/widgets/custom_text_form_field.dart';
import 'package:flutter/widgets.dart';

class ForgetPasswordOneBottomSheet extends StatefulWidget {
  ForgetPasswordOneBottomSheet({Key? key}) : super(key: key);

  @override
  _ForgetPasswordOneBottomSheetState createState() =>
      _ForgetPasswordOneBottomSheetState();
}

class _ForgetPasswordOneBottomSheetState
    extends State<ForgetPasswordOneBottomSheet> {

  double bottomSheetHeight = 500;

  TextEditingController _bottomSheetEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        height: bottomSheetHeight,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width*0.3,
                  decoration: BoxDecoration(
                      color: Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forget password',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Colors.black,
                    fontFamily: 'Nunito'
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Enter your email for the verification process we will send a 4-digit code to your email.',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),

            SizedBox(height: 30.0),
            GestureDetector(
                onTap: (){
                  bottomSheetHeight = 500;
                },
                child: _buildEmail(context)
            ),
            SizedBox(height: 30.0),
            _buildContinueButton(context),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainerSemiBold,
      onPressed: () {
        Navigator.pop(context);
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return ForgetPasswordTwoBottomSheet();
          },
        );
      },
    );
  }

  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: _bottomSheetEmailController,
      hintText: "Email",
      borderDecoration: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.grey.shade300,
          width: 1
        )
      ),
      textInputType: TextInputType.emailAddress,
    );
  }

  @override
  void dispose() {
    _bottomSheetEmailController.dispose();
    super.dispose();
  }
}
