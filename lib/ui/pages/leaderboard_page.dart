import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/shared/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  bool isMingguan = true;

  void toggleCategorize() {
    setState(() {
      isMingguan = !isMingguan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 88,
        centerTitle: true,
        bottomOpacity: 0,
        forceMaterialTransparency: true,
        title: Text(
          'Leaderboard',
          style: WhiteInterTextStyle.copyWith(
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
        minHeight: MediaQuery.of(context).size.height / 4,
        maxHeight: MediaQuery.of(context).size.height,
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
      decoration: BoxDecoration(
        color: greenBackgroundColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          buildTopNavigationToggle(),
        ],
      ),
    );
  }

  Widget buildTopNavigationToggle() {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(horizontal: 42),
      child: Row(
        children: [
          InkWell(
            onTap: toggleCategorize,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: MediaQuery.of(context).size.width / 2 - 44,
              decoration: BoxDecoration(
                color: isMingguan ? greenLightColor : greenBackgroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Mingguan',
                  style: isMingguan
                      ? WhiteRubikTextStyle.copyWith(
                          fontSize: 16,
                        )
                      : GreenRubikTextStyle.copyWith(
                          fontSize: 16,
                        ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4,),
          InkWell(
            onTap: toggleCategorize,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: MediaQuery.of(context).size.width / 2 - 44,
              decoration: BoxDecoration(
                color: isMingguan ? greenBackgroundColor : greenLightColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Semua',
                  style: isMingguan
                      ? GreenRubikTextStyle.copyWith(
                          fontSize: 16,
                        )
                      : WhiteRubikTextStyle.copyWith(
                          fontSize: 16,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
