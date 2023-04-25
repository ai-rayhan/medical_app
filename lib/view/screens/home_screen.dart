import 'package:flutter/material.dart';
import 'package:medical_app/view/widgets/drawer.dart';
import '../widgets/categorycard.dart';
import '../../utills/constants.dart';
import '../widgets/doctor_card.dart';
import '/view/widgets/searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueaccent,
        shadowColor: Colors.transparent,
      ),
      drawer:  CustomNavigationDrawer(),
      body: SizedBox(
        // width: 280,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: blueaccent),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, left: 16, right: 16, bottom: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 6),
                        child: Text(
                          "Find your Desired Doctor",
                          style: largeStyle,
                        ),
                      ),
                      const SearchBar(),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 6),
                        child: Text(
                          "Categories",
                          style: largeStyle,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 12),
                          child: Row(
                            children: const [
                              CategoryCard(),
                              CategoryCard(),
                              CategoryCard(),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                  top:10, left: 16,right: 16,),
                    child: Text(
                      "Top & Nearby Doctor",
                      style: TextStyle(fontSize: large),
                    ),
                  ),
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                  

                ],
              ),
            ),
            
          ]),
        ),
      ),
    );
  }
}
