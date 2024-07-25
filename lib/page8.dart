import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/page9.dart';


class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView (child:  Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:190.h,left: 10.w),
              child: Text( 'Verify',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1F1F1F),
                  fontSize: 31.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.07,
                ),),
            ),
            SizedBox(height: 25.h,), Padding(
              padding:  EdgeInsets.only(left: 20.w),
              child: Text('Please enter the 5 digit one time ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.06,
                ),),
            ),
            SizedBox(height: 20,), Padding(
              padding:  EdgeInsets.only(left: 20.w),
              child: Text('code to activate your account!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.06,
                ),),
            ),
            SizedBox(height: 50.h,),
            OtpTextField(enabledBorderColor: Colors.black,
              numberOfFields: 5,
              borderColor:Colors.grey,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            SizedBox(height: 30.h,), Text( 'Didn’t receive a Code?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.06,
              ),),
            SizedBox(height: 30.h,),   Text( 'Resend Code!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 18.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                letterSpacing: 0.06,
              ),),
            SizedBox(height: 230.h,),  TextButton(onPressed:  () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Page9()));
            },
              child: Container( width: 316.w,
                height: 45.28.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ), child: Padding(
                  padding:  EdgeInsets.only(top: 20.h),
                  child: Text('Verify',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF2F2),
                      fontSize: 17.72.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07.h,
                      letterSpacing: 0.06,
                    ),),
                ),),
            )
          ],
        ),
        ));

  }
}
