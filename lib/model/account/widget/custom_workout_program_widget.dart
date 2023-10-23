import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWorkoutPrograms extends StatelessWidget {
  const CustomWorkoutPrograms(
      {super.key,
      required this.pathImage,
      required this.title,
      required this.textBody});

  final String pathImage, title, textBody;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      margin: const EdgeInsets.only(bottom: 20),
      height: 174,
      width: mediaQuery.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFEAECF5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 36,
                width: 68,
                decoration: const BoxDecoration(
                  color: const Color(0xFFFCFCFD),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Text(
                  "7 days",
                  style:
                      theme.textTheme.bodySmall!.copyWith(color: Colors.black),
                ),
              ),
              Text(
                title,
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                textBody,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  const ImageIcon(
                    AssetImage(
                      "assets/images/icons/Icon_clock.png",
                    ),
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "30 mins",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(child: Image.asset(pathImage))
        ],
      ),
    );
  }
}

class ListViewAllType {
  static List<Widget> allType =const [
    CustomWorkoutPrograms(
      pathImage: "assets/images/picture/image_yoga.png",
      title: "Morning Yoga",
      textBody: "improve mental focus",
    ),
    CustomWorkoutPrograms(
      pathImage: "assets/images/picture/image_plank.png",
      title: "Plank Exercise",
      textBody: "Improve posture and stability.",
    ),
    CustomWorkoutPrograms(
      pathImage: "assets/images/picture/image_plank.png",
      title: "Plank Exercise",
      textBody: "Improve posture and stability.",
    ),
    CustomWorkoutPrograms(
      pathImage: "assets/images/picture/image_yoga.png",
      title: "Morning Yoga",
      textBody: "improve mental focus",
    ),
  ];
}
