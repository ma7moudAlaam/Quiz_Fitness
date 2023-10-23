import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key,required this.backgroundColor,required this
  .title ,required this.pathImage});
final Color backgroundColor;
final String title,pathImage;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Expanded(
      child: Container(

        padding: const EdgeInsets.all(14),
        
        height: 56,
        decoration:  BoxDecoration(color: backgroundColor,borderRadius:BorderRadius.circular(12) ),
        child: Row(
          children: [
            Image.asset(pathImage),
            const SizedBox(
              width: 12,
            ),
            Text(title,
                style: theme.textTheme.bodySmall!.copyWith(color: Colors.black))
          ],
        ),
      ),
    );
  }
}
