import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';
import 'package:medical_app/view/screens/subscreens/doctor_details_screen.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Container(width: 60,height: 80, decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),image: DecorationImage(image: AssetImage('assets/images/member1.png'),fit: BoxFit.cover)),),
        title: Text('Dr.Kamal uddin rasel'),
        subtitle: Text('\t\t\t\tDentists\nRegisterd Medical Assist. Practionar'),
        trailing: Column(children: [
          Text('*****',style: largeStyle,),
          Text('4.7',style: smallBlackStyle,)
        ],),
        onTap: () => Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => const DoctorDetailsScreen(),
    ),),
      ),
    );
  }
}
