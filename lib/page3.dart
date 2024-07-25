import 'package:flutter/material.dart';
import 'package:untitled2/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Screen1State();
}

class _Screen1State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
     Padding(
       padding: const EdgeInsets.only(top: 130,left: 15),
       child: SizedBox(width:380,child: Image.asset("assets/b.png")),
     ),
         SizedBox(height: 50,), Text('Pay Bills',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0.07,
              letterSpacing: 0.06,
            ),),
         SizedBox(height: 30,), Text(
            "Pay Bills such as Electricity, Water bill, TV" ,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(height: 30,),Text(
            'subscriptions etc.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
         SizedBox(height:30,), Text(
            'Buy airtime & Bundles.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.11,
              letterSpacing: 0.06,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),

              child: TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Page4()));},
                child: Container( width: 220,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF0083),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),child: Center(
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
            ),


        ],
      ),
    );
  }
}
