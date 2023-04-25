import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';

class SheduleCard extends StatelessWidget {
  const SheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          // height: 150,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: 90,
                      // width: 70,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 136, 118, 118)),
                      child: Column(children: [
                        Text(
                          "12",
                          style: largeStyle,
                        ),
                        Text(
                          "Jan",
                          style: smallWhiteStyle,
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        scrollAbleText(Text(
                          "heath plus diagonositic center",
                          style: midiuumBlackStyle1,
                        )),
                        Text(
                          "sadar haspatal road",
                          style: smallBlackStyle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "sunday.04.00PM-09.00PM",
                          style: smallestBlackStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Fee:800 taka",style: smallWhiteStyle,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text("Book Now"),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
              // ElevatedButton(onPressed: (){}, child: Text("Book Now"))
            ],
          )),
    );
  }
}
