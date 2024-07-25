import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Text(
            'Good afternoon,',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Jacquie!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Image.asset("assets/e.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      Text(
                        'Loan Balance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      Text(
                        '50%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55, left: 20),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$3,000.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'of \$10,050.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        '39 days left',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: LinearProgressBar(
                    maxSteps: 5,
                    progressType: LinearProgressBar.progressTypeLinear,
                    // Use Linear progress
                    currentStep: 2,
                    progressColor: Colors.black,
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    //  NEW
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 200),
                  child: Row(
                    children: [
                      Text(
                        'Repay Loan',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400,
                                  child: Center(
                                    child: DefaultTabController(
                                      length: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 30, top: 20),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Repay Loan',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 190,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Icon(
                                                    Icons.close,
                                                    color: Colors.black,
                                                    size: 30,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 45,
                                            child: TabBar(
                                              padding: EdgeInsets.zero,
                                              labelColor: Colors.white,
                                              dividerColor: Colors.transparent,
                                              indicatorSize:
                                                  TabBarIndicatorSize.tab,
                                              indicator: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
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
                                            padding: EdgeInsets.only(top: 23),
                                            child: SizedBox(
                                              height: 230,
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
                                                            fontSize: 18,
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
                                                            const EdgeInsets
                                                                .only(
                                                                top: 10,
                                                                right: 220),
                                                        child: Text(
                                                          'You currently owe',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
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
                                                            const EdgeInsets
                                                                .only(
                                                                top: 30,
                                                                right: 220),
                                                        child: Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '\$ ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 0.08,
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
                                                                  fontSize: 24,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 0.03,
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
                                                            const EdgeInsets
                                                                .only(top: 60),
                                                        child: Container(
                                                          width: 194,
                                                          height: 37.26,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Color(
                                                                0xFFFF0083),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24),
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
                                                                fontSize: 18,
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
                                                              const EdgeInsets
                                                                  .only(
                                                                  bottom: 50),
                                                          child: Text(
                                                            'Repay your loan today and take another one immediately.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF959595),
                                                              fontSize: 17,
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
                                                        padding: const EdgeInsets.only(bottom: 20),
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                              labelText:
                                                                  "Enter Amount",
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30))),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 10),
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
                                                                    height: 500,
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
                                                                              fontSize: 18,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              letterSpacing: 0.04,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 20),
                                                                            child: Text( 'Congratulations!',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 25,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w800,
                                                                                height: 0,
                                                                              ),),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 20),
                                                                            child: CircleAvatar(
                                                                              radius: 60,
                                                                              child: Icon(
                                                                                Icons.done,
                                                                                color:
                                                                                Colors.green,
                                                                                size: 70,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 40),
                                                                            child: Text( 'Transaction Summary',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 18,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w700,
                                                                              ),),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 20),
                                                                            child: Text( '\$ 10,050.00 ',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 24,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w800,
                                                                              ),),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 30),
                                                                            child: Text( 'Your Loan has been fully\nPaid',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 18,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w700,
                                                                              ),),
                                                                          ),
                                                                          Container( width: 316,
                                                                            height: 45.28,
                                                                            decoration: ShapeDecoration(
                                                                              color: Color(0xFFFF0083),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20),
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
                                                                                    fontSize: 18,
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
                                                            width: 194,
                                                            height: 37.26,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFFF0083),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24),
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
                                                                  fontSize: 18,
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
                            size: 50,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: 410,
              height: 530,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Row(
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                            color: Color(0xFF242424),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFFFF0083),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 30),
                    child: Text(
                      'Mini-Statement',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Loan Disbursement',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '\$10,050.00',
                          style: TextStyle(
                            color: Color(0xFF53D258),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 10),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Withdraw to Bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          '-\$10,050.00',
                          style: TextStyle(
                            color: Color(0xFFE25C5C),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 10),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Loan Repayment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          '\$3,000.00',
                          style: TextStyle(
                            color: Color(0xFF53D258),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 10),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Row(
                      children: [
                        Text(
                          'Loan Repayment Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Text(
                          '-\$32.00',
                          style: TextStyle(
                            color: Color(0xFFE25C5C),
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 10),
                    child: Text(
                      '2022-09-12',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 18,
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
