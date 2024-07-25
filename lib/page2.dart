import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 150.h),
            child: Image.asset("assets/a.png"),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Send Money',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Send money to all networks and banks ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'right from your Pay Fast ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'account. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.11.h,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 160.h,
          ),
          TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Page3()));},
            child: Container(
              width: 220.w,
              height: 46.h,
              decoration: ShapeDecoration(
                color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
              ),
              child: Center(
                child: Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07.h,
                    letterSpacing: 0.06,
                  ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
