import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(left: 10, top: 110),
            child: SizedBox(width: 200, child: Image.asset("assets/d.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Text(
              'Add your mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.69,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                letterSpacing: 0.06,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              'We’ll need to confirm it by sending a text.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
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
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 200,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Page6()));
            },
            child: Container(
              width: 316,
              height: 45.28,
              decoration: ShapeDecoration(
                color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Proceed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFF2F2),
                    fontSize: 17.72,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
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
