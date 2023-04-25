import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';
import 'package:medical_app/view/widgets/hospital_card.dart';

class HospitalsScreen extends StatelessWidget {
  const HospitalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                color: blueaccent,
                child: Text("Nearest",style: largeBlackStyle,)),
            ),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                color: blueaccent,
                child: Text("Cheepest Services",style: largeBlackStyle,)),
            ),
                const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
        const HospitalCard(),
      ],),
    );
  }
}