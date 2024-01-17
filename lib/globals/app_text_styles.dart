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

  static TextStyle monteseratStyle({required Color color, double fontsize = 24}){
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontsize
    );
  }

  static TextStyle headingtStyle({double fontSize = 36, Color color = Colors.white}){
    return GoogleFonts.rubikMoonrocks(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        letterSpacing:2
    );
  }

  static TextStyle normalStyle({Color color = Colors.white}){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: color,
      letterSpacing: 1.7
    );
  }
}