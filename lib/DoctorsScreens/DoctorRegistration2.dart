import 'package:doctari/patientFlow/registration_screens/login_screen/login_screen.dart';
import 'package:doctari/widgets/app_bar/custom_app_bar.dart';
import 'package:doctari/widgets/custom_icon_button.dart';
import 'package:doctari/widgets/custom_text_form_field.dart';
import 'package:doctari/widgets/custom_drop_down.dart';
import 'package:doctari/widgets/custom_checkbox_button.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/app_export.dart';


class DoctorRegistration2 extends StatefulWidget {
  DoctorRegistration2({Key? key})
      : super(
    key: key,
  );

  @override
  State<DoctorRegistration2> createState() =>
      _DoctorRegistration2State();
}

class _DoctorRegistration2State extends State<DoctorRegistration2> {
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 375.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 21.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 19.v),
                    _buildCountry(context),
                    SizedBox(height: 20.v),
                    _buildName(context),
                    SizedBox(height: 21.v),
                    CustomDropDown(
                      hintText: "Country",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade500
                      ),
                      items: dropdownItemList,
                      onChanged: (value) {},
                    ),

                    SizedBox(height: 20.v),

                    CustomDropDown(
                      hintText: "City",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade500
                      ),
                      items: dropdownItemList1,
                      onChanged: (value) {},
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account? ",
                            style: CustomTextStyles.bodyMediumff000000,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                            },
                            child: Text(
                              "Log in",
                              style: CustomTextStyles.bodyMediumff004687,
                            ),
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
            ),
          ),
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
    return CustomTextFormField(
      controller: countryController,
      hintText: "Document Number",
      textInputType: TextInputType.number,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 16.v,
      ),
      borderDecoration: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1,
          color: Colors.grey.shade300
        )
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "License Number",
      textInputType: TextInputType.number,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 16.v,
      ),
      borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade300
          )
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade300
          )
      ),
      hintStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade500
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
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
      hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade500
      ),
      controller: confirmpasswordController,
      hintText: "Confirm Password",
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
    );
  }

  /// Section Widget
  Widget _buildIagreewiththeTermsofServicePri(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 32.h,
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
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
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
