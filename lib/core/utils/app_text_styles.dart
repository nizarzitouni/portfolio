import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pallete.dart';

abstract class AppTextStyles {
  static TextStyle poppins500style18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Pallete.blackColor,
    fontFamily: "Poppins",
  );
  static TextStyle appbarTitile700style25 = const TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
    color: Pallete.whiteColor,
    //fontFamily: "Poppins",
  );
  static TextStyle smallBarsTitle600style24firaCode = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.firaCode().fontFamily,
    color: Pallete.whiteColor,
    //fontFamily: "Poppins",
  );
}
