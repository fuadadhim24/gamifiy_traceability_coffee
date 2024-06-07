import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/shared/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        centerTitle: true,
        title: Text(
          'Leaderboard',
          style: BlackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      ),
      body: SlidingUpPanel(
        margin: EdgeInsets.symmetric(horizontal: 8),
        color: greyBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        maxHeight: MediaQuery.of(context).size.height / 4,
        minHeight: MediaQuery.of(context).size.height,
        panel: Container(
          child: buildSlidingUpPanel(),
        ),
        body: buildBodyPage(),
      ),
    );
  }

  Widget buildSlidingUpPanel() {
    return Container(
      child: Center(
        child: Text('Sliding Up Panel'),
      ),
    );
  }

  Widget buildBodyPage() {
    return Container(
      child: Center(
        child: Text('Body Page'),
      ),
    );
  }
}
