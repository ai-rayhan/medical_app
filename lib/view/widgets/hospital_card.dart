import 'package:flutter/material.dart';

import '../../utills/constants.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: AssetImage('assets/images/restaurant4.jpg'),
                  fit: BoxFit.cover)),
        ),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              Text(
                "Maulvibazar 250 sadar hospital& medical college",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        subtitle: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 3,bottom: 3),
              child: Text(
                "Hospital Road,Moulvibazar medical college",
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Text(
              'Service:E.C.G ,X-Ray, Altrasonograpy, RadioTherapy',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
        trailing: Column(
          children: [
            Text(
              '*****',
              style: largeStyle,
            ),
            Text(
              '4.7',
              style: smallBlackStyle,
            )
          ],
        ),
      ),
    );
    ;
  }
}
