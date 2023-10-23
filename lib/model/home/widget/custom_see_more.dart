import 'package:flutter/material.dart';

class CustomSeeMore extends StatelessWidget {
  const CustomSeeMore(
      {super.key,
      required this.title,
      required this.titleOption,
      required this.color});

  final String title, titleOption;
  final Color color;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall,
        ),
        Row(
          children: [
            Text(
              titleOption,
              style: theme.textTheme.bodySmall!.copyWith(color: color),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
              color: color,
            )
          ],
        ),
      ],
    );
  }
}
