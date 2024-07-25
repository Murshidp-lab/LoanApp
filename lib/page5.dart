import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/page6.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.only(left: 10.w, top: 110.h),
            child: SizedBox(width: 200, child: Image.asset("assets/d.png")),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 40.w, top: 20.h),
            child: Text(
              'Add your mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.69.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                letterSpacing: 0.06,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 40.h),
            child: Text(
              'We’ll need to confirm it by sending a text.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.06,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Mobile Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r))),
          ),
          SizedBox(
            height: 200.h,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Page6()));
            },
            child: Container(
              width: 316.w,
              height: 45.28.h,
              decoration: ShapeDecoration(
                color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 20.h),
                child: Text(
                  'Proceed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFF2F2),
                    fontSize: 17.72.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07.h,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
