import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(top: 60, left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Good afternoon,',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Jacquie!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              height: 0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(children: [
              Image.asset(
                "assets/e.png",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Text(
                      'Loan Limit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(
                      width: 210,
                    ),
                    Text(
                      '100%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20),
                child: Row(
                  children: [
                    Text(
                      '\$10,000.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Text(
                      'Request for \$5,500.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        height: 0.09,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 30),
                child: SizedBox(
                  height: 20,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Stack(
                      children: [
                        LinearProgressBar(
                          maxSteps: 10,
                          progressType: LinearProgressBar.progressTypeLinear,
                          // Use Linear progress
                          currentStep: 2,
                          progressColor: Colors.black,
                          backgroundColor: Colors.grey,
                          borderRadius: BorderRadius.circular(40), //  NEW
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 105, left: 160),
                child: Row(
                  children: [
                    Text(
                      'Request for Loan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 10,
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
                                  30,
                                ),
                                topRight: Radius.circular(30)),
                          ),
                          builder: (BuildContext context) {
                            // UDE : SizedBox instead of Container for whitespaces
                            return SizedBox(
                                height: 420,
                                child: Center(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'How long do you want the loan for?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
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
                                            fontSize: 30,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 300,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 20),
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
                                                  BorderRadius.circular(30),
                                              //  NEW
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Container(
                                          width: 315,
                                          height: 98,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color(0xFF979797)),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 00),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 20,
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
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 70,
                                                      ),
                                                      Text(
                                                        'No of',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 0.16,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 70,
                                                      ),
                                                      Text(
                                                        'Total',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 0.16,
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
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 60,
                                                      ),
                                                      Text(
                                                        'payment',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 50,
                                                      ),
                                                      Text(
                                                        'payback',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14,
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
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'NIL',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 100,
                                                      ),
                                                      Text(
                                                        'NIL',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 70,
                                                      ),
                                                      Text(
                                                        'NIL',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFC4C4C4),
                                                          fontSize: 20,
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
                                              const EdgeInsets.only(top: 50),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Container(
                                                width: 17,
                                                height: 17,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F2F2),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 0.50,
                                                        color:
                                                            Color(0x661F1F1F)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.44),
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
                                                        fontSize: 13,
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
                                                        fontSize: 13,
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
                                                        fontSize: 13,
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
                                                        fontSize: 13,
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
                                          padding: EdgeInsets.only(top: 30),
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
                                                    height: 1500,
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
                                                                fontSize: 18,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Congratulations!',
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF1F1F1F),
                                                                fontSize: 30,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            CircleAvatar(
                                                              radius: 60,
                                                              child: Icon(
                                                                Icons.done,
                                                                color:
                                                                    Colors.green,
                                                                size: 70,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                   EdgeInsets
                                                                      .only(
                                                                      bottom: 20),
                                                              child: Text(
                                                                'Transaction Summary',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                  color: Color(
                                                                      0xFF1F1F1F),
                                                                  fontSize: 20,
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
                                                                  width: 50,
                                                                ),
                                                                Text(
                                                                  'Next Repayment Date:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 60,
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
                                                                    fontSize: 15,
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
                                                                  width: 50,
                                                                ),
                                                                Text(
                                                                  'Interest Rate:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 160,
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
                                                                    fontSize: 15,
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
                                                                  width: 50,
                                                                ),
                                                                Text(
                                                                  'Monthly Repayment:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 80,
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
                                                                    fontSize: 15,
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
                                                                  width: 50,
                                                                ),
                                                                Text(
                                                                  'No of Payments:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 170,
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
                                                                    fontSize: 15,
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
                                                                  width: 50,
                                                                ),
                                                                Text(
                                                                  'Reason:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize: 15,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 140,
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
                                                                    fontSize: 15,
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
                                                                      bottom: 30),
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 50,
                                                                  ),
                                                                  Text(
                                                                    'Total Payback Amount:',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF7F8790),
                                                                      fontSize:
                                                                          15,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 60,
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
                                                                          15,
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
                                                                width: 316,
                                                                height: 36,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFFFF0083),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                20),
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
                                                                          17.72,
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
                                                                width: 316,
                                                                height: 36,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color:
                                                                      Colors.black,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                20),
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
                                                                          17.72,
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
                                              width: 316,
                                              height: 45.28,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFF0083),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Apply Now',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFFFFF2F2),
                                                    fontSize: 20,
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
                        size: 50,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 255,
                ),
                child: Container(
                  width: 470,
                  height: 410,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 50),
                    child: Text(
                      'How do you want to use your limit?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.04,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 310),
                child: Image.asset("assets/f.png"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
