import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(top: 150),
            child: Image.asset("assets/a.png"),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Send Money',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              height: 0.07,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Send money to all networks and banks ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'right from your Pay Fast ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'account. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(
            height: 160,
          ),
          TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Page3()));},
            child: Container(
              width: 220,
              height: 46,
              decoration: ShapeDecoration(
                color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
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
