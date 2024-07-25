import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Page10 extends StatefulWidget {
  const Page10({super.key});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.only(left: 30.w, top: 50.h),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.06.h,
                  ),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 30.sp,
                )
              ],
            ),
          ),
          Text(
            'Good afternoon,',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Jacquie!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Stack(
              children: [
                Image.asset("assets/e.png"),
                Padding(
                  padding:  EdgeInsets.only(left: 20.w, top: 15.h),
                  child: Row(
                    children: [
                      Text(
                        'Loan Balance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 190.w,
                      ),
                      Text(
                        '50%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55.h, left: 20.w),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$3,000.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'of \$10,050.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      Text(
                        '39 days left',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 90.h),
                  child: LinearProgressBar(
                    maxSteps: 5,
                    progressType: LinearProgressBar.progressTypeLinear,
                    // Use Linear progress
                    currentStep: 2,
                    progressColor: Colors.black,
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(15.r),
                    //  NEW
                  ),
                ),
                //hello
                Padding(
                  padding:  EdgeInsets.only(top: 110.h, left: 200.w),
                  child: Row(
                    children: [
                      Text(
                        'Repay Loan',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Center(
                                    child: DefaultTabController(
                                      length: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.w, top: 20.h),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Repay Loan',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22.sp,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 190.w,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Icon(
                                                    Icons.close,
                                                    color: Colors.black,
                                                    size: 30.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Container(
                                            height: 45.h,
                                            child: TabBar(
                                              padding: EdgeInsets.zero,
                                              labelColor: Colors.white,
                                              dividerColor: Colors.transparent,
                                              indicatorSize:
                                                  TabBarIndicatorSize.tab,
                                              indicator: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30.r),
                                                  color: Color(0xFFFF0083)),
                                              tabs: [
                                                Tab(
                                                  icon: Text("Full Repayment"),
                                                ),
                                                Tab(
                                                  icon: Text(
                                                    'Partial Repayment',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 23.h),
                                            child: SizedBox(
                                              height: 230.h,
                                              child: TabBarView(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        color: Colors.white,
                                                        child: Text(
                                                          'Repay your loan today and take another one immediately.',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF959595),
                                                            fontSize: 18.sp,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            letterSpacing: 0.40,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                             EdgeInsets
                                                                .only(
                                                                top: 10.h,
                                                                right: 220.w),
                                                        child: Text(
                                                          'You currently owe',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16.sp,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing: 0.04,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                             EdgeInsets
                                                                .only(
                                                                top: 30.h,
                                                                right: 220.w),
                                                        child: Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '\$ ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14.sp,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 0.08.h,
                                                                  letterSpacing:
                                                                      0.04,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '10,050.00',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 24.sp,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 0.03.h,
                                                                  letterSpacing:
                                                                      0.07,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                             EdgeInsets
                                                                .only(top: 60.h),
                                                        child: Container(
                                                          width: 194.w,
                                                          height: 37.26.h,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Color(
                                                                0xFFFF0083),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.r),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Continue',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFFFF2F2),
                                                                fontSize: 18.sp,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                letterSpacing:
                                                                    0.05,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        color: Colors.white,
                                                        child: Padding(
                                                          padding:
                                                               EdgeInsets
                                                                  .only(
                                                                  bottom: 50.h),
                                                          child: Text(
                                                            'Repay your loan today and take another one immediately.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF959595),
                                                              fontSize: 17.sp,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing:
                                                                  0.40,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:  EdgeInsets.only(bottom: 20.h),
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                              labelText:
                                                                  "Enter Amount",
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30.r))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                             EdgeInsets
                                                                .only(top: 10.h),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            showModalBottomSheet<
                                                                    void>(
                                                                // context and builder are
                                                                // required properties in this widget
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  // we set up a container inside which
                                                                  // we create center column and display text

                                                                  // Returning SizedBox instead of a Container
                                                                  return SizedBox(
                                                                    height: 500.h,
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children:  <Widget>[
                                                                          Text(
                                                                            'That was way to easy!',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 18.sp,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              letterSpacing: 0.04,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsets.only(top: 20.h),
                                                                            child: Text( 'Congratulations!',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 25.sp,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w800,
                                                                                height: 0.h,
                                                                              ),),
                                                                          ),
                                                                          Padding(
                                                                            padding:  EdgeInsets.only(top: 20.h),
                                                                            child: CircleAvatar(
                                                                              radius: 60.r,
                                                                              child: Icon(
                                                                                Icons.done,
                                                                                color:
                                                                                Colors.green,
                                                                                size: 70.sp,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding:  EdgeInsets.only(top: 40.h),
                                                                            child: Text( 'Transaction Summary',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 18.sp,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w700,
                                                                              ),),
                                                                          ),
                                                                          Padding(
                                                                            padding:  EdgeInsets.only(top: 20.h),
                                                                            child: Text( '\$ 10,050.00 ',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 24.sp,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w800,
                                                                              ),),
                                                                          ),
                                                                          Padding(
                                                                            padding:  EdgeInsets.only(top: 30.h),
                                                                            child: Text( 'Your Loan has been fully\nPaid',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 18.sp,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w700,
                                                                              ),),
                                                                          ),
                                                                          Container( width: 316.w,
                                                                            height: 45.28.h,
                                                                            decoration: ShapeDecoration(
                                                                              color: Color(0xFFFF0083),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20.r),
                                                                              ),
                                                                            ),child: Center(
                                                                              child: Text(
                                                                                  'Okay',
                                                                                  textAlign:
                                                                                  TextAlign
                                                                                      .center,
                                                                                  style: TextStyle(
                                                                                    color: Color(
                                                                                        0xFFFFF2F2),
                                                                                    fontSize: 18.sp,
                                                                                    fontFamily:
                                                                                    'Poppins',
                                                                                    fontWeight:
                                                                                    FontWeight
                                                                                        .w600,
                                                                                    letterSpacing:
                                                                                    0.05,
                                                                                  ),
                                                                                ),
                                                                            ),)
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  );
                                                                });
                                                          },
                                                          child: Container(
                                                            width: 194.w,
                                                            height: 37.26.h,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFFF0083),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24.r),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Continue',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFFFF2F2),
                                                                  fontSize: 18.sp,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  letterSpacing:
                                                                      0.05,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                          child: Icon(
                            Icons.arrow_circle_right,
                            color: Colors.pink,
                            size: 50.sp,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Container(
              width: 410.w,
              height: 530.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26.r),
                    topRight: Radius.circular(26.r),
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 30.h, left: 30.w),
                    child: Row(
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                            color: Color(0xFF242424),
                            fontSize: 20.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 170.w,
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFFFF0083),
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 230.w, top: 30.h),
                    child: Text(
                      'Mini-Statement',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 35.w, top: 10.h),
                    child: Row(
                      children: [
                        Text(
                          'Loan Disbursement',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          '\$10,050.00',
                          style: TextStyle(
                            color: Color(0xFF53D258),
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 250.w, top: 10.h),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 35.w, top: 10.h),
                    child: Row(
                      children: [
                        Text(
                          'Withdraw to Bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          '-\$10,050.00',
                          style: TextStyle(
                            color: Color(0xFFE25C5C),
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 250.w, top: 10.h),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 35.w, top: 10.h),
                    child: Row(
                      children: [
                        Text(
                          'Loan Repayment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 110.w,
                        ),
                        Text(
                          '\$3,000.00',
                          style: TextStyle(
                            color: Color(0xFF53D258),
                            fontSize: 22.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 230.w, top: 10.h),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 35.w),
                    child: Row(
                      children: [
                        Text(
                          'Loan Repayment Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                        ),
                        Text(
                          '-\$32.00',
                          style: TextStyle(
                            color: Color(0xFFE25C5C),
                            fontSize: 22.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 230.w, top: 10.h),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 18.sp ,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
