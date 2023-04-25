import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Color blueaccent = Colors.blueAccent;
Color white = Color(0xFFDDDDDD);
Color silver = Color(0xFFD1D3D4);
Color silver2 = Color.fromARGB(45, 209, 211, 212);
Color silver1 = Color(0xFFBAC4CC);
Color black12 = Color.fromARGB(251, 34, 34, 34);
double large = 25;
double midium = 20;
double midium1 = 18;
double small = 16;
double smallest = 14;
TextStyle largeStyle = TextStyle(fontSize: large, color: white);
TextStyle largeBlackStyle = TextStyle(fontSize: large, color: black12);
TextStyle midiuumBlackStyle = TextStyle(fontSize: midium, color: black12);
TextStyle midiuumBlackStyle1 = TextStyle(fontSize: midium1, color: black12,fontWeight: FontWeight.w700);
TextStyle midiumWhiteStyle = TextStyle(fontSize: midium, color: white);
TextStyle smallWhiteStyle = TextStyle(fontSize: small, color: white);
TextStyle smallestWhiteStyle = TextStyle(fontSize: smallest, color: white);
TextStyle smallestBlackStyle = TextStyle(fontSize: smallest, color: black12);
TextStyle smallBlackStyle = TextStyle(fontSize: small, color: black12);
TextStyle smallBlackStyleBold = TextStyle(fontSize: smallest, color: black12,fontWeight: FontWeight.bold);

deviceSize(context) {
  MediaQuery.of(context).size;
}

Widget scrollAbleText(Text text) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        text
      ],
    ),
  );
}
