import 'package:fitness/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomChoiceChip extends StatelessWidget {
  CustomChoiceChip(
      {super.key, required this.title, required this.onnnSelected, required this.selected});

  String title;
  var selected;
  var onSelected, onnnSelected;


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ChoiceChip(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        selectedColor: Color(0xFFD6BBFB),
        disabledColor: Colors.white,
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.grey),
        label: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        onSelected: (value) {
          onSelected = value;
        },
        selected
        :selected,
      ),
    );
  }
}
