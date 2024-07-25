import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:untitled2/page10.dart';

class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF0083),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 60.h, left: 10.w),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 120.w,
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.06.h,
                  ),
                ),
                SizedBox(
                  width: 120.w,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Good afternoon,',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.h,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Jacquie!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              height: 0.h,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Stack(children: [
              Image.asset(
                "assets/e.png",
              ),
              Padding(
                padding:  EdgeInsets.only(top: 30.h, left: 20.w),
                child: Row(
                  children: [
                    Text(
                      'Loan Limit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09.h,
                      ),
                    ),
                    SizedBox(
                      width: 210.w,
                    ),
                    Text(
                      '100%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09.h,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 80.h, left: 20.w),
                child: Row(
                  children: [
                    Text(
                      '\$10,000.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09.h,
                      ),
                    ),
                    SizedBox(
                      width: 85.w,
                    ),
                    Text(
                      'Request for \$5,500.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        height: 0.09.h,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 110.h, left: 30.w),
                child: SizedBox(
                  height: 20.h,
                  width: 200.w,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical: 7.h),
                    child: Stack(
                      children: [
                        LinearProgressBar(
                          maxSteps: 10,
                          progressType: LinearProgressBar.progressTypeLinear,
                          // Use Linear progress
                          currentStep: 2,
                          progressColor: Colors.black,
                          backgroundColor: Colors.grey,
                          borderRadius: BorderRadius.circular(40.r), //  NEW
                        ),
                        CircleAvatar(
                          radius: 40.r,
                          backgroundColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 105.h, left: 160.w),
                child: Row(
                  children: [
                    Text(
                      'Request for Loan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  30.r,
                                ),
                                topRight: Radius.circular(30.r)),
                          ),
                          builder: (BuildContext context) {
                            // UDE : SizedBox instead of Container for whitespaces
                            return SizedBox(
                                height: 420.h,
                                child: Center(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'How long do you want the loan for?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.04,
                                          ),
                                        ),
                                        Text(
                                          '2 Months',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 30.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 300.w,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 20.h),
                                            child: LinearProgressBar(
                                              maxSteps: 10,
                                              progressType: LinearProgressBar
                                                  .progressTypeLinear,
                                              // Use Linear progress
                                              currentStep: 3,
                                              progressColor: Color(0xFFFF0083),
                                              backgroundColor:
                                                  Color(0xFFFFD6E7),
                                              borderRadius:
                                                  BorderRadius.circular(30.r),
                                              //  NEW
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50.h,
                                        ),
                                        Container(
                                          width: 315.w,
                                          height: 98.h,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color(0xFF979797)),
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:  EdgeInsets.only(
                                                right: 00.w),
                                            child: Padding(
                                              padding:  EdgeInsets.only(
                                                left: 20.w,
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Monthly  ',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 70.w,
                                                      ),
                                                      Text(
                                                        'No of',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 0.16.h,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 70.w,
                                                      ),
                                                      Text(
                                                        'Total',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 0.16.h,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'payment  ',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 60.w,
                                                      ),
                                                      Text(
                                                        'payment',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 50.w,
                                                      ),
                                                      Text(
                                                        'payback',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Text(
                                                        'NIL',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 100.w,
                                                      ),
                                                      Text(
                                                        'NIL',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 70.w,
                                                      ),
                                                      Text(
                                                        'NIL',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                               EdgeInsets.only(top: 50.h),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 60.w,
                                              ),
                                              Container(
                                                width: 17.w,
                                                height: 17.h,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F2F2),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 0.50.w,
                                                        color:
                                                            Color(0x661F1F1F)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.44.r),
                                                  ),
                                                ),
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'I agree to the ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'Terms & Conditions',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFFF0083),
                                                        fontSize: 13.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' and ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'Policy.',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFFF0083),
                                                        fontSize: 13.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 30.h),
                                          child: TextButton(
                                            onPressed: () {
                                              showModalBottomSheet<void>(
                                                // context and builder are
                                                // required properties in this widget
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  // we set up a container inside which
                                                  // we create center column and display text

                                                  // Returning SizedBox instead of a Container
                                                  return SizedBox(
                                                    height: 1500.h,
                                                    child: Center(
                                                      child: SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Text(
                                                              'That was way to easy!',
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF1F1F1F),
                                                                fontSize: 18.sp,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0.h,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Congratulations!',
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF1F1F1F),
                                                                fontSize: 30.sp,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                            ),
                                                            CircleAvatar(
                                                              radius: 60.r,
                                                              child: Icon(
                                                                Icons.done,
                                                                color:
                                                                    Colors.green,
                                                                size: 70.sp,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                   EdgeInsets
                                                                      .only(
                                                                      bottom: 20.h),
                                                              child: Text(
                                                                'Transaction Summary',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                  color: Color(
                                                                      0xFF1F1F1F),
                                                                  fontSize: 20.sp,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 50.w,
                                                                ),
                                                                Text(
                                                                  'Next Repayment Date:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 60.w,
                                                                ),
                                                                Text(
                                                                  '02/04/2023',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF080808),
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 50.w,
                                                                ),
                                                                Text(
                                                                  'Interest Rate:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 160.w,
                                                                ),
                                                                Text(
                                                                  '10 %',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 50.w,
                                                                ),
                                                                Text(
                                                                  'Monthly Repayment:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 80.w,
                                                                ),
                                                                Text(
                                                                  '\$5,000.00',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 50.w,
                                                                ),
                                                                Text(
                                                                  'No of Payments:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 170.w,
                                                                ),
                                                                Text(
                                                                  '2',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 50.w,
                                                                ),
                                                                Text(
                                                                  'Reason:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 140.w,
                                                                ),
                                                                Text(
                                                                  'Emergency Bills',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize: 15.sp,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                   EdgeInsets
                                                                      .only(
                                                                      bottom: 30.h),
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 50.w,
                                                                  ),
                                                                  Text(
                                                                    'Total Payback Amount:',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF7F8790),
                                                                      fontSize:
                                                                          15.sp,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 60.w,
                                                                  ),
                                                                  Text(
                                                                    '\$ 10,050.00',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          15.sp,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            TextButton(onPressed: () {
                                                              Navigator.of(context)
                                                                  .push(MaterialPageRoute(builder: (_) => Page10()));
                                                            },
                                                              child: Container(
                                                                width: 316.w,
                                                                height: 36.h,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFFFF0083),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                20.r),
                                                                  ),
                                                                ),
                                                                child: Center(
                                                                  child: Text(
                                                                    'Accept',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFFFF2F2),
                                                                      fontSize:
                                                                          17.72.sp,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      letterSpacing:
                                                                          0.06,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            TextButton(
                                                              onPressed: () { Navigator.of(context).pop(); },
                                                              child: Container(
                                                                width: 316.w,
                                                                height: 36.h,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color:
                                                                      Colors.black,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                20.r),
                                                                  ),
                                                                ),
                                                                child: Center(
                                                                  child: Text(
                                                                    'Decline',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFFFF2F2),
                                                                      fontSize:
                                                                          17.72.sp,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      letterSpacing:
                                                                          0.06,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: 316.w,
                                              height: 45.28.h,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFF0083),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20.r),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Apply Now',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFFFFF2F2),
                                                    fontSize: 20.sp,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.06,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                ));
                          },
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_right,
                        color: Color(0xFFFF0083),
                        size: 50.sp,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 255.h,
                ),
                child: Container(
                  width: 470.w,
                  height: 410.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.r),
                        topRight: Radius.circular(26.r),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 30.h, left: 50.w),
                    child: Text(
                      'How do you want to use your limit?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.04,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 310.h),
                child: Image.asset("assets/f.png"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
