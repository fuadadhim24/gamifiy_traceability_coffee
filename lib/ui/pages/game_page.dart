import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gamify_traceability_coffee/shared/theme.dart';
import 'package:gamify_traceability_coffee/ui/widgets/card.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:gamify_traceability_coffee/ui/widgets/avatar.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
            'Game',
            style: WhiteInterTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 20,
            ),
          ),
        ),
        body: buildBodyPage());
  }

  Widget buildContentCard() {
    return Container(
      decoration: BoxDecoration(
        color: whiteBackgroundColor,
      ),
      child: Column(
        children: [],
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSearch(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildTime(),
            ],
          ),
          buildContentCard()
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

  Widget buildSearch() {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: greenLightColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: ,
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
            width: 6,
          ),
          Text(
            '06d 23h 00m',
            style: WhiteRubikTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRanks() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          buildRank(3, 2, 'Ipin', '1.252'),
          buildRank(1, 1, 'Upin', '1.321'),
          buildRank(6, 3, 'Mail', '1.076'),
        ],
      ),
    );
  }

  Widget buildRank(numberAvatar, numberRank, name, point) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AvatarProfile(numberAvatar: numberAvatar),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              height: 24,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: greenLightenColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                child: Text(
                  name,
                  style: DarkBlueRubikTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 18,
              padding: EdgeInsets.symmetric(
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                color: greenLightColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                child: Text(
                  point,
                  style: WhiteRubikTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Image.asset(
              getImageRankPath(numberRank),
              width: (MediaQuery.of(context).size.width - 48) / 3,
            ),
            numberRank != 3
                ? SizedBox(
                    height: 20,
                  )
                : SizedBox(),
          ],
        )
      ],
    );
  }

  String getImageRankPath(numberPath) {
    switch (numberPath) {
      case 1:
        return 'assets/rank1nd.png';
      case 2:
        return 'assets/rank2nd.png';
      case 3:
        return 'assets/rank3nd.png';
      default:
        return '';
    }
  }
}
