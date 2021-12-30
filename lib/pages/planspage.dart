import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 0.15 * height,
            ),
            Image.asset("assets/pickplan.png"),
            SizedBox(
              height: 30,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Subscribe a Plan",
                    style: GoogleFonts.assistant(
                      textStyle: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextSpan(
                    text:
                        "\n\nSubscribe a plan to change your vehicle at your home or office",
                    style: GoogleFonts.assistant(
                      textStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "BROWSE",
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 3,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.grey[400],
                  ),
                  shape: StadiumBorder()),
            ),
          ],
        ),
      ),
      // body: Container(
      //   child: Center(
      //     child: Text(
      //       "Subscribe a Plan",
      //       style: GoogleFonts.assistant(
      //         textStyle: TextStyle(
      //           color: Colors.grey[800],
      //           fontSize: 25,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
