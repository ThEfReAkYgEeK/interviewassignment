import 'package:flutter/material.dart';

class NewPlanPage extends StatefulWidget {
  @override
  _NewPlanPageState createState() => _NewPlanPageState();
}

class _NewPlanPageState extends State<NewPlanPage> {
  final availablePlans = [
    {
      "name": "Domus Condo",
      "3pin": true,
      "6pin": true,
      "AC": true,
      "DC": false,
      "openHours": 24,
      "totalSlots": 6,
    },
    {
      "name": "Axxel Innovation Centre",
      "3pin": true,
      "6pin": true,
      "AC": true,
      "DC": true,
      "openHours": 12,
      "totalSlots": 12,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Center(
                child: Text(
                  "Get a plan\nthat fits what you need",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
