import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles{
  static TextStyle headerTextStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle monteseratStyle(){
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24
    );
  }

  static TextStyle headingtStyle(){
    return GoogleFonts.rubikMoonrocks(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        letterSpacing:2
    );
  }
}