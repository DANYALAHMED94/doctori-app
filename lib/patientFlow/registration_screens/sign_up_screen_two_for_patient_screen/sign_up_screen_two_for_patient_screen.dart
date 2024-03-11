import 'package:doctari/patientFlow/registration_screens/login_screen/login_screen.dart';
import 'package:doctari/presentation/patient_login_screen/patient_login_screen.dart';
import 'package:doctari/widgets/app_bar/custom_app_bar.dart';
import 'package:doctari/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:doctari/widgets/custom_icon_button.dart';
import 'package:doctari/widgets/custom_text_form_field.dart';
import 'package:doctari/widgets/custom_drop_down.dart';
import 'package:doctari/widgets/custom_checkbox_button.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/app_export.dart';
import 'package:flutter/widgets.dart';

class SignUpScreenThreeScreen extends StatefulWidget {
  SignUpScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpScreenThreeScreen> createState() =>
      _SignUpScreenThreeScreenState();
}

class _SignUpScreenThreeScreenState extends State<SignUpScreenThreeScreen> {
  TextEditingController countryController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool isShowPassword = false;

  bool isShowConfirmPassword = false;

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool iagreewiththeTermsofServicePri = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            _buildCountry(context),
            SizedBox(height: 20.v),
            _buildName(context),
            SizedBox(height: 21.v),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 19
              ),
              child: CustomDropDown(
                hintText: "Country",
                icon: Icon(Icons.arrow_drop_down, size: 30, color: Colors.grey.shade400,),
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500
                ),
                items: dropdownItemList,
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 19
              ),
              child: CustomDropDown(
                hintText: "City",
                icon: Icon(Icons.arrow_drop_down, size: 30, color: Colors.grey.shade400,),
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500
                ),

                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.9,
                items: dropdownItemList1,
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 20.v),
            _buildPassword(context),
            SizedBox(height: 20.v),
            _buildConfirmpassword(context),
            SizedBox(height: 90.v),
            _buildIagreewiththeTermsofServicePri(context),
            SizedBox(height: 14.v),
            _buildSendRequest(context),
            SizedBox(height: 17.v),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => PatientLoginScreen()
                        )
                    )
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account? ",
                    style: CustomTextStyles.bodyMediumff000000,
                  ),
                  Text(
                    "Log in",
                    style: CustomTextStyles.bodyMediumff004687,
                  )
                ],
              ),
            ),

            // RichText(
            //   text: TextSpan(
            //     children: [
            //       TextSpan(
            //         text: "Have an account? ",
            //         style: CustomTextStyles.bodyMediumff000000,
            //       ),
            //       TextSpan(
            //         text: "Log in",
            //         style: CustomTextStyles.bodyMediumff004687,

            //       ),
            //     ],
            //   ),
            //   textAlign: TextAlign.left,
            // ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70,
      leadingWidth: 375.h,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(10),
                decoration: IconButtonStyleHelper.outlineBlueGray,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftGray50002,
                  color: Colors.grey,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: CustomTextFormField(
        borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        controller: countryController,
        hintText: "Document Number",
        textInputType: TextInputType.number,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 16.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: CustomTextFormField(
        borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        controller: nameController,
        hintText: "License Number",
        textInputType: TextInputType.number,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 16.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: CustomTextFormField(
        borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        controller: passwordController,
        hintText: "Password",
        hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey
        ),
        textInputType: TextInputType.visiblePassword,
        suffix: IconButton(
            onPressed: (){
              if(isShowPassword){
                isShowPassword = false;
              }
              else{
                isShowPassword = true;
              }
              setState(() {

              });
            },
            icon: Icon(
              isShowPassword?Icons.visibility:Icons.visibility_off,
              color: Color(0xff677294),
            )
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        obscureText: !isShowPassword,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      child: CustomTextFormField(
        borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        controller: confirmpasswordController,
        hintText: "Confirm Password",
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: IconButton(
            onPressed: (){
              if(isShowConfirmPassword){
                isShowConfirmPassword = false;
              }
              else{
                isShowConfirmPassword = true;
              }
              setState(() {

              });
            },
            icon: Icon(
              isShowConfirmPassword?Icons.visibility:Icons.visibility_off,
              color: Color(0xff677294),
            )
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        obscureText: !isShowConfirmPassword,
      ),
    );
  }

  /// Section Widget
  Widget _buildIagreewiththeTermsofServicePri(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 50.h,
        right: 64.h,
      ),
      child: CustomCheckboxButton(
        text: "I agree Terms of Service & Privacy Policy",
        value: iagreewiththeTermsofServicePri,
        onChange: (value) {
          setState(() {
            iagreewiththeTermsofServicePri = value;
          });
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSendRequest(BuildContext context) {
    return CustomElevatedButton(
      width: MediaQuery.of(context).size.width*0.8,
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PatientLoginScreen(),
            )
        );
      },
      text: "Sign Up",
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainerSemiBold,
    );
  }
}
