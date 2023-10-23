import 'package:fitness/core/provider/app_provider.dart';
import 'package:fitness/model/account/account_view.dart';
import 'package:fitness/model/home/home_view.dart';
import 'package:fitness/model/news/news_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});

  static String routeName = "homelayout";
  int selectedIndex = 0;
  List<Widget> screens = [HomeView(), AccountView(), const NewsView()];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[appProvider.selectBottom],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            appProvider.changeBottomBar(index);
          },
          currentIndex: appProvider.selectBottom,
          items: const [
            BottomNavigationBarItem(
                label: "home",
                icon:
                    ImageIcon(AssetImage("assets/images/icons/home_icon.png"))),
            BottomNavigationBarItem(
                label: "account",
                icon: ImageIcon(
                    AssetImage("assets/images/icons/account_icon.png"))),
            BottomNavigationBarItem(
                label: "news",
                icon:
                    ImageIcon(AssetImage("assets/images/icons/news_icon.png")))
          ]),
    );
  }
}
