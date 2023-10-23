import 'package:fitness/core/application_theme/application_theme.dart';
import 'package:fitness/layout/home/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/provider/app_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const FitnessApp()));
}
class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.light,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName:(context) => HomeLayout()
      },
    );
  }
}
