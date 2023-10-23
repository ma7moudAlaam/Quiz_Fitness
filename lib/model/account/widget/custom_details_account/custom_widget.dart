import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget(
      {super.key,
      required this.pathImage,
      required this.degree,
      required this.undTitle,
      required this.upTitle});

  final String pathImage, upTitle, undTitle, degree;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(
              AssetImage(
              pathImage,
              ),
              color: Color(0xFF717BBC),
            ),
            Text(
              upTitle,
              style: GoogleFonts.inter(fontSize: 12, color: Colors.black),
            )
          ],
        ),
        Row(
          children: [
            Text(
              undTitle,
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              degree,
              style: theme.textTheme.bodySmall!.copyWith(color: Colors.black),
            )
          ],
        )
      ],
    );
  }
}
