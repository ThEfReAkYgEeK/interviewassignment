import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  bool isPlanHome = true;
  bool isYourPlans = false;
  var plans = [
    {
      "name": "Domus Condo",
      "slots": 3,
      "isExpired": false,
      "isExpiring": false,
    },
    {
      "name": "Domus Condo",
      "slots": 3,
      "isExpired": false,
      "isExpiring": true,
    },
    {
      "name": "Axxel Innovation Centre",
      "slots": 8,
      "isExpired": true,
      "isExpiring": true,
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: isPlanHome
          ? Container(
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
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
                    onPressed: () {
                      setState(
                        () {
                          isPlanHome = false;
                          isYourPlans = true;
                        },
                      );
                    },
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.grey[400],
                        ),
                        shape: StadiumBorder()),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton.icon(
                      label: Text(
                        " PLANS ",
                        style: TextStyle(
                          color: Colors.green,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 60),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your Plans",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Active",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(
                        bottom: 40,
                      ),
                      children: [0, 1, 2].map<Widget>(
                        (index) {
                          return plans[index]["isExpired"]
                              ? Container()
                              : Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey[400],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            12), // <-- Radius
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 0.60 * width,
                                            child: Column(
                                              children: [
                                                Text(
                                                  plans[index]["name"],
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "${plans[index]["slots"]} Slots Available now"
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          plans[index]["isExpiring"]
                                              ? Container(
                                                  width: 0.17 * width,
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow[700],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: Text(
                                                    "EXPIRING",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              : Container(
                                                  width: 0.17 * width,
                                                ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                        },
                      ).toList(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Expired",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(
                        bottom: 40,
                      ),
                      children: [0, 1, 2].map<Widget>(
                        (index) {
                          return plans[index]["isExpired"]
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey[400],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            12), // <-- Radius
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            // width: 0.60 * width,
                                            child: Column(
                                              children: [
                                                Text(
                                                  plans[index]["name"],
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "${plans[index]["slots"]} Slots Available now"
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Container();
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
