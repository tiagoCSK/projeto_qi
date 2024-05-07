import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTitle extends StatelessWidget {
  final String title;
 AppTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
    style: GoogleFonts.inter(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),);
  }
}