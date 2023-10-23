import 'package:fitness/model/home/widget/customexercisewidget/custom_widget.dart';
import 'package:flutter/material.dart';

class CustomExerciseWidget extends StatelessWidget {
  const CustomExerciseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomWidget(
                backgroundColor: Color(0xFFF9F5FF),
                title: "Relaxation",
                pathImage: "assets/images/icons/icon_relaxa.png"),
            SizedBox(width: 15,),
            CustomWidget(
              backgroundColor: Color(0xFFFDF2FA),
              pathImage: "assets/images/icons/icon_meditation.png",
              title: "Meditation",
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomWidget(
                backgroundColor: Color(0xFFFFFAF5),
                title: "Beathing",
                pathImage: "assets/images/icons/icon_beathing.png"),
            SizedBox(width: 15,),
            CustomWidget(
              backgroundColor: Color(0xFFF0F9FF),
              pathImage: "assets/images/icons/icon_yoga.png",
              title: "Yoga",
            ),
          ],
        ),
      ],
    );
  }
}
