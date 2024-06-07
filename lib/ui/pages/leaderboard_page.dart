import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: greenBackgroundColor,
      ),
      child: Column(
        children: [
          buildTopNavigationToggle(),
          SizedBox(
            height: 20,
          ),
          buildTopStats(),
          SizedBox(height:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildTime(),
            ],
          )
        ],
      ),
    );
  }

  Widget buildTopNavigationToggle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      height: 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: 4,
          ),
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

  Widget buildTopStats() {
    return Container(
      height: 78,
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 56,
            width: 56,
            margin: EdgeInsets.only(top: 10, left: 5, bottom: 10),
            decoration: BoxDecoration(
              color: darkOrangeColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 170),
            child: Text(
              'Kamu melakukan lebih baik dari 60% player lain!',
              style: WhiteRubikTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTime() {
    return Container(
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/ic_time.png',
            width: 13,
          ),
          SizedBox(
          width: 6,),
          Text(
            '06d 23h 00m',
            style:
                WhiteRubikTextStyle.copyWith(fontWeight: medium, fontSize: 11),
          )
        ],
      ),
    );
  }

  Widget buildRank(){
    
  }
}
