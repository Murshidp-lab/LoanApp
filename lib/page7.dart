import 'package:flutter/material.dart';
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
              padding:  EdgeInsets.only(top: 180, left: 30),
              child: Text(
                'How you’ll log in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1F1F1F),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.06,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 40,top: 30),
              child: Text(
                'Make sure you keep it as secure as \n possible!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.06,
                ),
              ),
            ),
           SizedBox(height: 60,), TextField(
              decoration: InputDecoration(
                  labelText: "Mobile Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextField(obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
           SizedBox(height: 280,), TextButton(onPressed:   () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => Page8()));
    },
             child: Container( width: 316,
                height: 45.28,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text( 'Proceed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFF2F2),
                    fontSize: 17.72,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
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
