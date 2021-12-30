import 'package:flutter/material.dart';
import 'package:technosoftwares/pages/charging.dart';
import 'package:technosoftwares/pages/homepage.dart';
import 'package:technosoftwares/pages/networkpage.dart';
import 'package:technosoftwares/pages/planspage.dart';
import 'package:technosoftwares/pages/settingspage.dart';

class CentralWidget extends StatefulWidget {
  @override
  _CentralWidgetState createState() => _CentralWidgetState();
}

class _CentralWidgetState extends State<CentralWidget> {
  int curentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    NetworkPage(),
    ChargingPage(),
    PlansPage(),
    SettingsPage(),
  ];

  final texts = [
    "Home",
    "Network",
    "Charging",
    "Plans",
    "Settings",
  ];

  final icons = [
    Icons.home,
    Icons.location_on,
    Icons.bolt,
    Icons.ballot,
    Icons.settings,
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = PlansPage();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.qr_code_scanner,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [0, 1, 2, 3, 4]
                .map<Widget>(
                  (index) => Container(
                    width: 0.2 * width,
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = screens[index];
                            curentTab = index;
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            icons[index],
                            color: curentTab == index
                                ? Colors.green
                                : Colors.grey[800],
                          ),
                          Text(
                            texts[index],
                            style: TextStyle(
                              color: curentTab == index
                                  ? Colors.green
                                  : Colors.grey[800],
                              fontSize: 0.023 * width,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
