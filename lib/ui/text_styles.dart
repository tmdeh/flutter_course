import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  // Poppins - Bold
  static TextStyle titleBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 50,
    height: 1.5,
  );

  static TextStyle headerBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    height: 1.5,
  );

  static TextStyle largeBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    height: 1.5,
  );

  static TextStyle mediumBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    height: 1.5,
  );

  static TextStyle normalBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.5,
  );

  static TextStyle smallBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    height: 1.5,
  );

  static TextStyle smallerBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 11,
    height: 1.55,
  );

  // Poppins - Regular
  static TextStyle titleRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 50,
    height: 1.5,
  );

  static TextStyle headerRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 30,
    height: 1.5,
  );

  static TextStyle largeRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    height: 1.5,
  );

  static TextStyle mediumRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 18,
    height: 1.5,
  );

  static TextStyle normalRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 1.5,
  );

  static TextStyle smallRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    height: 1.5,
  );

  static TextStyle smallerRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 11,
    height: 1.55,
  );

  static TextStyle? largeTextRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    height: 1.5,
  );
}
