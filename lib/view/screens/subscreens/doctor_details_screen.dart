import 'package:flutter/material.dart';
import 'package:medical_app/utills/constants.dart';

import '../../widgets/subwidgets/shedule_card.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: blueaccent,title: Text("doctor"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      color: blueaccent,
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                flex: 1,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/member3.png'),
                                  radius: 60,
                                )),
                                SizedBox(width: 20,),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  scrollAbleText(Text(
                                    "Dr.mirza tufayel islam",
                                    style: midiumWhiteStyle,
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3,bottom: 3),
                                    child: scrollAbleText(Text(
                                      "Heart surgoun-Moulvibazar sadar hospital",
                                      style: smallWhiteStyle,
                                    )),
                                  ),
                                  scrollAbleText(Text(
                                    "service time:sun-fri(9.00-3.00)",
                                    style: smallestWhiteStyle,
                                  )),
                                  Divider(color: white,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 35,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.message,size: 35,)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.video_call,size: 35,)),
                                  ],)
                                ],
                              ),
                            )
                          ],
                        ),
                        
                  
                      ],
                    ),
                  ),
                ),
            Container(
              width: 250,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("About Doctor",style: largeStyle,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("For horizontal main axes, if the minimum height constraint passed to the flex layout exceeds the intrinsic height of the cross axis, children will be aligned as close to the top as they can be while honoring the baselinealignment. In other words, the extra space will be below all the children.",style: smallWhiteStyle,),
                          ),
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Upcoming shedule",style: largeStyle,),
                          ),
                          SheduleCard(),
                      ],),
              ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
