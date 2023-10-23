import 'package:fitness/core/provider/app_provider.dart';
import 'package:fitness/model/home/widget/custom_see_more.dart';
import 'package:fitness/model/news/widget/custom_hot_topics.dart';
import 'package:fitness/model/news/widget/cutom_choice_chip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  static String routeName = "news_view";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ImageIcon(
                AssetImage("assets/images/picture/icon_flower.png"),
                color: Color(0xFFC9B4FF),
              ),
              Text(
                "AliceCare",
                style: GoogleFonts.milonga(fontSize: 24),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.search),
                hintText: "Articles, Video, Audio and More,..."),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ChoiceChip(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    selectedColor: Color(0xFFD6BBFB),
                    disabledColor: Colors.white,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey),
                    label: Text(
                      "Discover",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onSelected: (value) {
                      appProvider.changeChipChoice1(value);
                    },
                    selected: appProvider.selectChip1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ChoiceChip(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    selectedColor: Color(0xFFD6BBFB),
                    disabledColor: Colors.white,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey),
                    label: Text(
                      "News",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onSelected: (value) {
                      appProvider.changeChipChoice2(value);
                    },
                    selected: appProvider.selectChip2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ChoiceChip(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    selectedColor: Color(0xFFD6BBFB),
                    disabledColor: Colors.white,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey),
                    label: Text(
                      "Most",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onSelected: (value) {
                      appProvider.changeChipChoice3(value);
                    },
                    selected: appProvider.selectChip3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ChoiceChip(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    selectedColor: Color(0xFFD6BBFB),
                    disabledColor: Colors.white,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey),
                    label: Text(
                      "Save",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onSelected: (value) {
                      appProvider.changeChipChoice4(value);
                    },
                    selected: appProvider.selectChip4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const CustomSeeMore(
            title: "Hot topics",
            titleOption: "see all",
            color: Color(0xFF5925DC),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: ListHotTopics.hotTopics,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Get Tips",
            style: theme.textTheme.titleSmall,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            height: 196,
            width: mediaQuery.width,
            decoration: const BoxDecoration(color: Color(0xFFE4E7EC)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/picture/image_doctor.png",
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Connect with doctors & \n get suggestions",
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: Colors.black),
                    ),
                    const Text(
                      "Connect now and get\nexpert insights ",
                      style: TextStyle(fontSize: 14),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 10),
                      alignment: Alignment.center,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFF7F56D9),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        "View details",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const CustomSeeMore(
            title: "Cycle Phases and Period",
            titleOption: "see all",
            color: Color(0xFF5925DC),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
