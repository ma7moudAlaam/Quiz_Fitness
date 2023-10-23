import 'package:fitness/model/account/widget/custom_divider.dart';
import 'package:flutter/material.dart';

import 'custom_widget.dart';

class CustomDetailsAccount extends StatelessWidget {
  const CustomDetailsAccount({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(16),
      height: 82,
      width: mediaQuery.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFF8F9FC)),
      child:const  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomWidget(

            pathImage: "assets/images/icons/icon_heart.png",undTitle: "81",degree: "BPM",upTitle: "Heart Rate",
          ),
          CustomDivider(),
          CustomWidget(
            pathImage: "assets/images/icons/icon_list.png",upTitle:"To-do" ,degree:"%" ,undTitle:"32,5" ,
          ),
          CustomDivider(),
          CustomWidget(
            pathImage: "assets/images/icons/icon_fire.png",upTitle:"Calo" ,degree:"Cal",undTitle: "1000",
          )
        ],
      ),
    );
  }
}
