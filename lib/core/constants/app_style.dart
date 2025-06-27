import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static const TextStyle heading = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w900,
  );

  static TextStyle get subHeading =>
      GoogleFonts.montserrat(fontSize: 13.0, fontWeight: FontWeight.w700);

  static const TextStyle body = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle link = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  static const TextStyle errorText = TextStyle(
    fontSize: 12.0,
    color: Colors.red,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get smallBoldTitle =>
      GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 15);
}
