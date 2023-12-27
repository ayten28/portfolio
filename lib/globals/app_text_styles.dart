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

  static TextStyle monteseratStyle({required Color color}){
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
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

  static TextStyle normalStyle(){
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: Colors.white,
      letterSpacing: 1
    );
  }
}