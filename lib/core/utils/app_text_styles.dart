import 'package:flutter/material.dart';

import '../pallete.dart';

abstract class AppTextStyles {
  static const poppins500style18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Pallete.blackColor,
    fontFamily: "Poppins",
  );
  static const appbarTitile700style25 = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
    color: Pallete.whiteColor,
    //fontFamily: "Poppins",
  );
  static const smallBarsTitle600style24 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: Pallete.whiteColor,
    //fontFamily: "Poppins",
  );
}
