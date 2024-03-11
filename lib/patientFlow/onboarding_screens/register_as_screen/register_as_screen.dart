import 'package:doctari/DoctorsScreens/DoctorRegistration.dart';
import 'package:doctari/patientFlow/registration_screens/login_screen/login_screen.dart';
import 'package:doctari/patientFlow/registration_screens/sign_up_screen_one_for_patient_screen/sign_up_screen_one_for_patient_screen.dart';
import 'package:doctari/presentation/patient_login_screen/patient_login_screen.dart';
import 'package:doctari/widgets/custom_elevated_button.dart';
import 'package:doctari/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:doctari/core/app_export.dart';

class RegisterAsScreen extends StatelessWidget {
  const RegisterAsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 70.v),
              CustomImageView(
                imagePath: ImageConstant.imgDoctariIcon51,
                height: 60.v,
                width: 230.h,
                fit: BoxFit.fill,
              ),
              Spacer(
                flex: 60,
              ),
              CustomElevatedButton(
                text: "Register as a Patient ",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              SignUpScreenOneForPatientScreen())));
                },
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle:
                    CustomTextStyles.titleMediumOnErrorContainerSemiBold,
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorRegistration()
                  )
                  );
                },
                height: 54.v,
                text: "Register as a Doctor",
                buttonStyle: CustomButtonStyles.outlineBlueGray,
                buttonTextStyle:
                    CustomTextStyles.titleMediumBluegray500SemiBold,
              ),
              Spacer(
                flex: 63,
              ),

              GestureDetector(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "Login As",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xff0066FF)
                            ),
                            textAlign: TextAlign.center,
                          ),
                          surfaceTintColor: Colors.white,
                          backgroundColor: Colors.white,
                          elevation: 8,
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          shadowColor: Colors.grey.shade300,
                          content: Text("What type of login you need ?", textAlign: TextAlign.center,),
                          contentPadding: EdgeInsets.all(15),
                          contentTextStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Nunito'
                          ),
                          actions: [
                            Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: SizedBox(
                                        height: 40,
                                        width: MediaQuery.of(context).size.width*0.3,
                                        child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                                            },
                                            child: Text(
                                              "As Doctor", style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.bold
                                            ),
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: SizedBox(
                                        height: 40,
                                        width: MediaQuery.of(context).size.width*0.3,
                                        child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientLoginScreen(),));
                                            },
                                            child: Text(
                                              "As Patient",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Nunito'
                                              ),
                                            )
                                        ),
                                      ),
                                    )
                                  ],
                                )
                            )
                          ],
                        );
                      },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? ", style: CustomTextStyles.bodyMediumff000000,),
                    Text("Log in", style: CustomTextStyles.bodyMediumff000000,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
