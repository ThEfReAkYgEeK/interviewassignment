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
          Icons.add,
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
            children: [
              Container(
                width: 0.2 * width,
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = HomePage();
                        curentTab = 0;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        color: curentTab == 0 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: curentTab == 0 ? Colors.green : Colors.grey,
                          fontSize: 0.023 * width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.2 * width,
                child: MaterialButton(
                  // minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = NetworkPage();
                        curentTab = 1;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: curentTab == 1 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        "Network",
                        style: TextStyle(
                          color: curentTab == 1 ? Colors.green : Colors.grey,
                          fontSize: 0.023 * width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.2 * width,
                child: MaterialButton(
                  // minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = ChargingPage();
                        curentTab = 2;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.bolt,
                        color: curentTab == 2 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        "Charging",
                        style: TextStyle(
                          color: curentTab == 2 ? Colors.green : Colors.grey,
                          fontSize: 0.023 * width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.2 * width,
                child: MaterialButton(
                  // minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = PlansPage();
                        curentTab = 3;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.ballot,
                        color: curentTab == 3 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        "Plans",
                        style: TextStyle(
                          color: curentTab == 3 ? Colors.green : Colors.grey,
                          fontSize: 0.023 * width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.2 * width,
                child: MaterialButton(
                  // minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = SettingsPage();
                        curentTab = 4;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.settings,
                        color: curentTab == 4 ? Colors.green : Colors.grey,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: curentTab == 4 ? Colors.green : Colors.grey,
                          fontSize: 0.023 * width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
