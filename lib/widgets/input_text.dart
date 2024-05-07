import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class inputText extends StatefulWidget {
  final String? placeholder;
 inputText({this.placeholder});

  @override
  State<inputText> createState() => _inputTextState();
}

class _inputTextState extends State<inputText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      
      style: GoogleFonts.inter(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1)),
      decoration: InputDecoration(border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
         ),
      hintText: widget.placeholder,
      filled: true,
      fillColor: Colors.white.withOpacity(0.1),
      hintStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      )
      ),
    );
  }
}


 