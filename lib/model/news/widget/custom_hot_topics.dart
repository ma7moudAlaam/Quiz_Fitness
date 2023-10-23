import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHotTopics extends StatelessWidget {
  const CustomHotTopics(
      {super.key,
      required this.title,
      required this.color,
      required this.text1,
      required this.text2});

  final String title, text1, text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(24),
      height: 160,
      width: mediaQuery.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0x64FF4C4C)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            alignment: Alignment.center,
            width: 100,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(4)),
            child: Text(
              title,
              style: GoogleFonts.inter(
                  color: const Color(0xFF93370D),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text1,
            style: GoogleFonts.inter(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            text2,
            style: GoogleFonts.inter(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ListHotTopics {
  static List<Widget> hotTopics = [
   const  CustomHotTopics(
        title: "SELF-CARE",
        color: Color(0xFFFEF0C7),
        text1: "10 Easy Self-Care Ideas That Can ",
        text2: "elp Boost Your Health"),
 const    CustomHotTopics(
        title: "CYCLE",
        color: Color(0xFFFEF0C7),
        text1: "How to take care of Menstrual",
        text2: " Hygiene during Menstrual Cycle"),
  ];
}
