import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';
import 'package:medical_app/view/screens/medicine_screen.dart';

import '../screens/doctors_screen.dart';
import '../screens/hospitals_screen.dart';
class DoctorHospitalTabBar extends StatelessWidget {
  const DoctorHospitalTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const DoctorsScreen(),
      const HospitalsScreen(),
      const MedicineScreen(),
    ];
    final _kTabs = <Tab>[
      const Tab(text: 'Doctors',icon:Icon( Icons.medical_information),),
      const Tab(text: 'Hospitals',icon:Icon( Icons.location_city)),
      const Tab(text: 'Medicine',icon:Icon( Icons.medical_services)),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
       appBar: AppBar(
         
          title: const Text('Madical solution'),
          backgroundColor: blueaccent,
          elevation: 0,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color.fromARGB(255, 28, 5, 109),
            unselectedLabelColor: Color.fromARGB(73, 255, 255, 255),
            labelColor: Color(0xDDDddddd),
            labelStyle: TextStyle(
              fontSize: 20,
            ),
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
