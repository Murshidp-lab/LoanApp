import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/page8.dart';

class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 180.h, left: 30.w),
              child: Text(
                'How you’ll log in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1F1F1F),
                  fontSize: 32.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.06,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 40.w,top: 30.h),
              child: Text(
                'Make sure you keep it as secure as \n possible!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.06,
                ),
              ),
            ),
           SizedBox(height: 60.h,), TextField(
              decoration: InputDecoration(
                  labelText: "Mobile Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: TextField(obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r))),
              ),
            ),
           SizedBox(height: 280.h,), TextButton(onPressed:   () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => Page8()));
    },
             child: Container( width: 316.w,
                height: 45.28.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              child: Padding(
                padding:  EdgeInsets.only(top: 20.h),
                child: Text( 'Proceed',
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
      ),
    );
  }
}
