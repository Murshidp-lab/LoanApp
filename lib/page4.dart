import 'package:flutter/material.dart';
import 'package:untitled2/page5.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 110,
          ),
          Padding(
            padding: EdgeInsets.only(top: 140),
            child: Image.asset("assets/c.png"),
          ),
         SizedBox(height: 80,), Text(
            'Pay Merchants',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0.07,
              letterSpacing: 0.06,
            ),
          ),
         SizedBox(height: 35,), Text(
            'Even with insufficient balance, Pay by ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
         SizedBox(height: 20,), Text(" Phone at Merchants with Pay Fast",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 0.06,
            ),),
         SizedBox(height: 20,), Text('Accounts.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 0.06,
            ),),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Page5()));},
              child: Container( width: 220,
                height: 46,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text( 'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF2F2),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                      letterSpacing: 0.06,
                    ),),
                ),),
            ),
          )
        ],
      ),
    );
  }
}
