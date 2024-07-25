import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/page2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 150.h, left: 10.w),
            child: Text(
              'Pay Fast',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 30.h, left: 25.w),
            child: Column(
              children: [
                Text(
                  "Forget Everything",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.05.h,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: 20.h,
                  ),
                  child: Text(
                    "You Know About",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding:  EdgeInsets.only(top: 20.h, left: 20.w),
                  child: Text(
                    "Banking",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 60.w,
            height: 30.h,
          ),
          Image.asset("assets/a.png"),
          SizedBox(
            height: 20.h,
          ),
          TextButton(
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Page2()));},
            child: Container(
                width: 220.w,
                height: 46.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.r)),
                ),
                child: Center(
                  child: Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.06,
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 220.w,
            height: 46.h,
            decoration: ShapeDecoration(
              color: Color(0xFFFF0083),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r)),
            ),
            child: Center(
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.06,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
