import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/custom_carousel_slider.dart';
import 'widget/customexercisewidget/custom_exercise_widget.dart';
import 'widget/custom_feeling_widget.dart';
import 'widget/custom_see_more.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatefulWidget {
  HomeView({super.key});

  static String routeName = "home_view";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/icons/leave_icon.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Moody",
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -10, end: -7),
                badgeContent: const Text(
                  '1',
                  style: TextStyle(fontSize: 13),
                ),
                child: const ImageIcon(
                  AssetImage("assets/images/icons/icon_notification.png"),
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                style: GoogleFonts.inter(
                  fontSize: 20,
                ),
              ),
              Text(
                " Sara Rose",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("How are you feeling today ?",
              style: TextStyle(fontSize: 16)),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFeelingWidget(
                pathImage: "assets/images/icons/feeling_icon.png",
                title: "Love",
              ),
              CustomFeelingWidget(
                pathImage: "assets/images/icons/feeling_icon2.png",
                title: "Cool",
              ),
              CustomFeelingWidget(
                pathImage: "assets/images/icons/feeling_icon3.png",
                title: "Happy",
              ),
              CustomFeelingWidget(
                pathImage: "assets/images/icons/feeling_icon4.png",
                title: "Sad",
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomSeeMore(
            title: "Feature",
            titleOption: "See more",color:Color(0xFF027A48) ,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomCarouselSlider(),
          const SizedBox(
            height: 30,
          ),
          const CustomSeeMore(title: "Exercise", titleOption: "See more",color: Color(0xFF027A48),),
          const SizedBox(
            height: 25,
          ),
          const CustomExerciseWidget()
        ],
      ),
    );
  }
}
