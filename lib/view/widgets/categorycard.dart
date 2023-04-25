import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff96BAFF)),
            child:  GridTile(
              child: Icon(
                Icons.heart_broken,
                color: Color(0xFFCFD141),
                size: 60,
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: 100,
            child: Center(
              child: Text(
                "Dentist",
                style: smallWhiteStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
