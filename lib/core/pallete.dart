import 'package:flutter/material.dart';

abstract class Pallete {
  static const Color blackColor = Color(0xFF121212);
  static const Color blackGreyColor = Color(0xFF292929);

  static const Color mainColor = Color(0xFF0E1636);
  static const Color mainTwoColor = Color(0xFF090f27);
  static const Color secondColor = Color(0xFFf91181);

  static const Color blushiWhiteColor = Color(0xFF7381b9);
  static const Color searchBarColor = Color.fromRGBO(32, 35, 39, 1);
  static const Color blueColor = Color(0xFF1d9bf0);
  static const Color whiteColor = Color(0xffffffff);
  static const Color greyColor = Colors.grey;
  static const Color redColor = Color.fromRGBO(249, 25, 127, 1);
  static const Color myGreyTwo = Color(0xfff3f3f5);
  static const Color myGreyThree = Color(0xffb9bbc2);
  static const Color greenColor = Color(0xff02ff58);
  static const Color backgroundColor2 = Color(0xFF17203A);

  //Shimmer
  static const shimmerBaseColor = Color(0xFFE0E0E0);
  static const shimmerHighLightColor = Color(0xFFF5F5F5);
}

// Define a list of colors for the gradient
final List<Color> gradientColors = [
  const Color(0xffffd45a), // yelow
  const Color(0xff7685f5), // yelow
  const Color(0xff02fb6e), // green
  const Color(0xffef9ca6), // Tredish
  const Color(0xff7e8f9e), // grey
  // Add more colors as needed
];
