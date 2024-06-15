import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/ui/pages/admin/admin_home_page.dart';
import 'package:gamify_traceability_coffee/ui/pages/mahasiswa/leaderboard_page.dart';
import 'package:gamify_traceability_coffee/ui/pages/mahasiswa/game_page.dart';
import 'package:gamify_traceability_coffee/ui/pages/splash_page.dart';
import 'package:gamify_traceability_coffee/ui/pages/mahasiswa/home_page.dart';
import 'package:gamify_traceability_coffee/ui/widgets/navigation_bottom.dart';

import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/navigation',
      getPages: [
        GetPage(name: '/', page: () => const SplashPage()),
        GetPage(name: '/leaderboard', page: () => const LeaderboardPage()),
        GetPage(name: '/admin-navigation', page: () => NavigationBottom()),
        GetPage(name: '/game', page: () => const GamePage()),
        GetPage(name: '/admin-home', page: () => const AdminHomePage()),
      ],
    );
  }
}
