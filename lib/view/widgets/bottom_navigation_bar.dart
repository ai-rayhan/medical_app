import 'package:flutter/material.dart';
import 'package:medical_app/view/screens/ambulance_screen.dart';
import 'package:medical_app/view/screens/blood_screen.dart';
import 'package:medical_app/view/widgets/drawer.dart';

import '../screens/home_screen.dart';
import 'dr_hsp_tabbar.dart';




class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => MyBottomNavBarState();
}

class MyBottomNavBarState extends State<MyBottomNavBar> {
  static int bottomNavigationTabIndex = 0;
  static void selectPage(BuildContext context, int index) {
    MyBottomNavBarState? stateObject =
        context.findAncestorStateOfType<MyBottomNavBarState>();
    stateObject?.setState(() {
      bottomNavigationTabIndex = index;
    });
    print("called nav");
  }

  static void refresh(BuildContext context) {
    MyBottomNavBarState? stateObject =
        context.findAncestorStateOfType<MyBottomNavBarState>();
    stateObject?.setState(() {
      bottomNavigationTabIndex = 0;
      bottomNavigationTabIndex = 1;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    // CustomNavigationDrawer(),
    HomeScreen(),
    DoctorHospitalTabBar(),
    BloodScreen(),
    AmbulanceScreen(),
  ];

  //Implementing Bottom Navigation Bar

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(bottomNavigationTabIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                ),
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.pin_drop),
                icon: Icon(Icons.pin_drop_outlined),
                label: "Nearest",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.water_drop),
                icon: Icon(Icons.water_drop_outlined),
                label: "Blood",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.fire_truck),
                icon: Icon(Icons.fire_truck_outlined),
                label: "Ambulance",
              ),
            ],
            currentIndex: bottomNavigationTabIndex,
            onTap: (int index) {
              setState(() {
                bottomNavigationTabIndex = index;
              });
            }),
      ),
    );
  }
}
