import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';


import 'view/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      theme: ThemeData.light().copyWith(
              textTheme: ThemeData.light().textTheme.apply(
                  fontFamily: 'Poppins',
                  bodyColor:  Colors.black,
                  displayColor: Color.fromARGB(202, 119, 119, 119)),
                  bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: silver2),
                  iconTheme: IconThemeData(color: white),
                  // ButtonTheme: ButtonThemeData(style: ButtonStyle(iconColor: MaterialStatePropertyAll(white)))
            ),
      home: MyBottomNavBar(),
    );
  }
}