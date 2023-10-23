import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFeelingWidget extends StatelessWidget {
  const CustomFeelingWidget({super.key,required this.title,required this.pathImage});
final String pathImage,title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CircleAvatar(
          backgroundColor: Color(0xFFE4E7EC),
          radius: 30,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              pathImage,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: GoogleFonts.inter(fontSize: 14),
        )
      ],
    );
  }
}
