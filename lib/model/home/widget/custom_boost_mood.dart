import 'package:flutter/material.dart';

class CustomBoostMood extends StatelessWidget {
 const  CustomBoostMood({super.key, required this.backgroundColor});
 final Color backgroundColor;

  @override
  Widget build(BuildContext context) {

    ThemeData theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(

      padding: const EdgeInsets.only(top: 24,left: 24,bottom: 24,right: 15),
      height: 168,
      width: mediaQuery.width,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Positive vibes",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF344054)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Boost your mood with",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    "positive vibes",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.play_circle_fill_sharp,
                    color: Color(0xFF32D583),
                    size: 24,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    "10 mins",
                    style: theme.textTheme.bodySmall!.copyWith(color: Colors.black),
                  )
                ],
              )
            ],
          ),
          Expanded(
              child: Image.asset("assets/images/picture/Walking the Dog.png",fit: BoxFit.cover,))
        ],
      ),
    );
  }
}
