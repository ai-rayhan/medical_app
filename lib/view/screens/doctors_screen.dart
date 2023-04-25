import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';
import 'package:medical_app/view/widgets/doctor_card.dart';
import 'package:medical_app/view/widgets/searchbar.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Closed to you",style: largeBlackStyle,),
          ),
          SizedBox(
            height: 300,
           
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context,int index){return DoctorCard();}
              ),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(10),
              color: blueaccent,
              child: Text("Top Doctor",style: largeBlackStyle,)),
          ),
            DoctorCard(),
            DoctorCard(),
            DoctorCard(),
            DoctorCard(),
            DoctorCard(),
            DoctorCard(),
        ],
      ),
    );
  }
}