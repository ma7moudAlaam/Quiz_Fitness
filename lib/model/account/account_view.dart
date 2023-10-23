import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'widget/custom_details_account/custom_details_account.dart';
import 'widget/custom_workout_program_widget.dart';

class AccountView extends StatefulWidget {
  AccountView({super.key});

  static String routeName = "account_view";

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
                const CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  AssetImage("assets/images/picture/image_account.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Jade",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Ready to workout?",
                      style: theme.textTheme.titleSmall,
                    )
                  ],
                )
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
        const CustomDetailsAccount(),
        const SizedBox(
          height: 25,
        ),
        Text(
          "Workout Programs",
          style: theme.textTheme.titleSmall,
        ),
        const SizedBox(
          height: 15,
        ),
        TabBar(controller: controller,

            tabs: const <Widget>[
            Tab(child: Text("All Type")),
    Tab(child: Text("Full Body")),
    Tab(child: Text("Upper")),
    Tab(child: Text("Lower")),
    ]),
    const SizedBox(
    height: 10,
    ),
    Expanded(
    child: TabBarView(
    controller: controller,
    children: [
    ListView(
    padding: EdgeInsets.zero,
    children: ListViewAllType.allType),
    ListView(
    padding: EdgeInsets.zero,
    children: ListViewAllType.allType),
    ListView(
    padding: EdgeInsets.zero,
    children: ListViewAllType.allType),
    ListView(
    padding: EdgeInsets.zero,
    children: ListViewAllType.allType),
    ],
    ),
    )
    ],
    ),
    );
  }
}
