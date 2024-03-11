import 'package:doctari/widgets/app_bar/custom_app_bar.dart';
import 'package:doctari/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:doctari/widgets/app_bar/appbar_subtitle_ten.dart';
import 'package:doctari/widgets/custom_icon_button.dart';
import 'package:doctari/widgets/custom_floating_text_field.dart';
import 'package:doctari/widgets/custom_radio_button.dart';
import 'package:flutter/cupertino.dart';
import '../doctor_profile_screen/widgets/dentist8_item_widget.dart';
import '../doctor_profile_screen/widgets/dentist10_item_widget.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DoctorProfileScreen extends StatelessWidget {
  DoctorProfileScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  String gender = "";

  List<String> radioList = ["lbl_male", "lbl_female", "lbl_others"];

  TextEditingController countryController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController nYGSGController = TextEditingController();

  TextEditingController yYYYController = TextEditingController();

  TextEditingController yYYYController1 = TextEditingController();

  TextEditingController selectSpecialtyController = TextEditingController();

  TextEditingController addOtherStudiesController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController attachFileController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: 50,
          backgroundColor: theme.colorScheme.primary,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 13
              ),
              height: 30.v,
              width: 30.v,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Icon(Icons.arrow_back_ios_new, size: 16, color: Colors.grey.shade500,)
              ),
            ),
          ),
          title: Text("Profile", style: TextStyle(fontSize: 18, color: Colors.white),),
        ),
        body: Form(
            key: _formKey,
            child: SizedBox(
                width: mediaQuery.size.width,
                child: Column(children: [

                  doctorProfileContainer(context),

                  // _buildProfile(context),
                  SizedBox(height: 14.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding:
                                  EdgeInsets.symmetric(horizontal: 20.h),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text("Personal information",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90005),
                                    SizedBox(height: 8.v),
                                    _buildName(context),
                                    SizedBox(height: 11.v),
                                    _buildLastName(context),
                                    SizedBox(height: 11.v),
                                    _buildMobileNo(context),
                                    SizedBox(height: 11.v),
                                    _buildDateOfBirth(context),
                                    SizedBox(height: 11.v),
                                    _buildEmail(context),
                                    SizedBox(height: 11.v),
                                    _buildGenderOptions(context),
                                    SizedBox(height: 11.v),
                                    _buildCountry(context),
                                    SizedBox(height: 11.v),
                                    _buildCity(context),
                                    SizedBox(height: 11.v),
                                    _buildAddress(context),
                                    SizedBox(height: 11.v),
                                    _buildNYGSG(context),
                                    SizedBox(height: 19.v),
                                    Text("Work Academic Information ",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90005),
                                    SizedBox(height: 8.v),
                                    _buildYYYY(context),
                                    SizedBox(height: 11.v),
                                    _buildYYYY1(context),
                                    SizedBox(height: 11.v),
                                    _buildSelectSpecialty(context),
                                    SizedBox(height: 11.v),
                                    _buildDentist(context),
                                    SizedBox(height: 11.v),
                                    _buildAddOtherStudies(context),
                                    SizedBox(height: 11.v),
                                    _buildDentist1(context),
                                    SizedBox(height: 20.v),
                                    Text("Pricing",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90005),
                                    SizedBox(height: 7.v),
                                    _buildPrice(context),
                                    SizedBox(height: 10.v),
                                    _buildPrice1(context),
                                    SizedBox(height: 20.v),
                                    Text("Signature",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90005),
                                    SizedBox(height: 7.v),
                                    _buildAttachFile(context)
                                  ]
                              )
                          )
                      )
                  )
                ]))),
        bottomNavigationBar: _buildContinue(context));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomFloatingTextField(
        controller: nameController,
        labelText: "Name",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Name",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomFloatingTextField(
        controller: lastNameController,
        labelText: "Last Name",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Last Name",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return CustomFloatingTextField(
        controller: mobileNoController,
        labelText: "Contact Number",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Contact Number",
        textInputType: TextInputType.number,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomFloatingTextField(
        controller: dateOfBirthController,
        labelText: "Date of birth",
        labelStyle: CustomTextStyles.bodyLargeRubik,
        hintText: "Date of birth",
        hintStyle: CustomTextStyles.bodyLargeRubik,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v),
        contentPadding: EdgeInsets.fromLTRB(20.h, 27.v, 20.h, 13.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomFloatingTextField(
        controller: emailController,
        labelText: "Email",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildGenderOptions(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v),
        decoration: AppDecoration.fillOnErrorContainer1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gender", style: theme.textTheme.labelMedium),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: CustomRadioButton(
                            text: "Male",
                            value: radioList[0],
                            groupValue: gender,
                            onChange: (value) {
                              gender = value;
                            })),
                    Padding(
                        padding: EdgeInsets.only(left: 27.h, bottom: 1.v),
                        child: CustomRadioButton(
                            text: "Female",
                            value: radioList[1],
                            groupValue: gender,
                            onChange: (value) {
                              gender = value;
                            })),
                    Padding(
                        padding: EdgeInsets.only(left: 27.h, bottom: 1.v),
                        child: CustomRadioButton(
                            text: "Others",
                            value: radioList[2],
                            groupValue: gender,
                            onChange: (value) {
                              gender = value;
                            }))
                  ])),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return CustomFloatingTextField(
        controller: countryController,
        labelText: "Country",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Country",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return CustomFloatingTextField(
        controller: cityController,
        labelText: "City",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "City",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomFloatingTextField(
        controller: addressController,
        labelText: "Address",
        labelStyle: CustomTextStyles.bodyMediumBluegray500Light,
        hintText: "Address",
        hintStyle: CustomTextStyles.bodyMediumBluegray500Light);
  }

  /// Section Widget
  Widget _buildNYGSG(BuildContext context) {
    return CustomFloatingTextField(
        controller: nYGSGController,
        labelText: "Document Number",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Document Number",
        textInputType: TextInputType.number,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEdit, height: 14.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildYYYY(BuildContext context) {
    return CustomFloatingTextField(
        controller: yYYYController,
        labelText: "Year Received as Doctor",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Year Received as Doctor");
  }

  /// Section Widget
  Widget _buildYYYY1(BuildContext context) {
    return CustomFloatingTextField(
        controller: yYYYController1,
        labelText: "Year of Completion of Speciality ",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Year of Completion of Speciality ");
  }

  /// Section Widget
  Widget _buildSelectSpecialty(BuildContext context) {
    return CustomFloatingTextField(
        controller: selectSpecialtyController,
        labelText: "Speciality",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Speciality",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 8.v,
                width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildDentist(BuildContext context) {
    return Wrap(
        runSpacing: 10.v,
        spacing: 10.h,
        children: List<Widget>.generate(3, (index) => Dentist8ItemWidget()));
  }

  /// Section Widget
  Widget _buildAddOtherStudies(BuildContext context) {
    return CustomFloatingTextField(
        controller: addOtherStudiesController,
        labelText: "Other Studies",
        labelStyle: CustomTextStyles.bodyLargeRubik,
        hintText: "Other Studies",
        hintStyle: CustomTextStyles.bodyLargeRubik,
        contentPadding: EdgeInsets.fromLTRB(20.h, 27.v, 20.h, 13.v));
  }

  /// Section Widget
  Widget _buildDentist1(BuildContext context) {
    return Wrap(
        runSpacing: 10.v,
        spacing: 10.h,
        children: List<Widget>.generate(2, (index) => Dentist10ItemWidget()));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomFloatingTextField(
        controller: priceController,
        labelText: "In-Person Visit",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "In-Person Visit");
  }

  /// Section Widget
  Widget _buildPrice1(BuildContext context) {
    return CustomFloatingTextField(
        controller: priceController1,
        labelText: "Online Consultation",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Online Consultation");
  }

  /// Section Widget
  Widget _buildAttachFile(BuildContext context) {
    return CustomFloatingTextField(
        controller: attachFileController,
        labelText: "Signature",
        labelStyle: theme.textTheme.bodyLarge!,
        hintText: "Signature",
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 60.v));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        text: "Continue",
        margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 27.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumRubikOnErrorContainer);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  Widget doctorProfileContainer(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height*0.28,
      width: mediaQuery.size.width,
      decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Set up your profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
          Text("Update your profile to connect with your patients with better impression.", textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.white),),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://as1.ftcdn.net/v2/jpg/01/72/18/66/1000_F_172186647_e93OQdc8KSoBzIPqfKG0UoJSJhR15HLa.jpg"
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: (){

                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    radius: 18,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
