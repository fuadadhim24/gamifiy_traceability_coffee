import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamify_traceability_coffee/shared/theme.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  List<Map<String, dynamic>> listArtikelContent = [
    {
      'title': 'Cek Title 1',
      'subTitle': 'cek subtitle 1',
      'imgPath': 'kopi.png',
      'link': 'youtube.com'
    },
    {
      'title': 'Cek Title 2',
      'subTitle': 'cek subtitle 2',
      'imgPath': 'kopi.png',
      'link': 'youtube.com'
    },
    {
      'title': 'Cek Title 3',
      'subTitle': 'cek subtitle 3',
      'imgPath': 'kopi.png',
      'link': 'youtube.com'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenBackgroundColor,
      body: buildBodyPage(),
    );
  }

  Widget buildBodyPage() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildTopProfile(),
          SizedBox(
            height: 33,
          ),
          buildCarousel(),
          SizedBox(
            height: 24,
          ),
          buildFastMenu(),
          SizedBox(
            height: 18,
          ),
          buildArtikelContent(),
        ],
      ),
    );
  }

  Widget buildTopProfile() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: WhiteRubikTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              Text(
                'Anantsa Sandiaga Uno',
                style: WhiteRubikTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          Icon(
            Icons.notification_important_rounded,
            color: whiteBackgroundColor,
          ),
        ],
      ),
    );
  }

  Widget buildCarousel() {
    return Container(
      width: double.infinity,
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildPromoteCard();
        },
      ),
    );
  }

  Widget buildPromoteCard() {
    return Container(
      margin: EdgeInsets.only(right: 9),
      padding: EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 130,
      width: 354,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 215,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Conato Caffe & Bakkery Bondowoso',
                  style: WhiteRubikTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Jl. Diponegoro, Purbosari, Kotakulon,  Kabupaten Bondowoso',
                  style: DarkBlueRubikTextStyle.copyWith(
                    fontSize: 9,
                  ),
                ),
                Text(
                  '0833-2555-1080',
                  style: DarkBlueRubikTextStyle.copyWith(
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 110,
            height: 103,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage('assets/img/ic_conato.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildFastMenu() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 130,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.assessment,
                        color: greenLightColor,
                        size: 34,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Laporan',
                    style: WhiteInterTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.cloud,
                        color: greenLightColor,
                        size: 34,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Cuaca',
                    style: WhiteInterTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.schedule,
                        color: greenLightColor,
                        size: 34,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Penjadwalan',
                    style: WhiteInterTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildArtikelContent() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Artikel Terbaru',
                  style: WhiteRubikTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  decoration: BoxDecoration(
                      color: darkBlueColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    'Lihat Semua',
                    style: WhiteInterTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 211,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listArtikelContent.length,
              padding: EdgeInsets.only(right: 12),
              itemBuilder: (context, index) {
                return buildArtikelCard(
                  listArtikelContent[index]['title'] ?? '',
                  listArtikelContent[index]['subTitle'] ?? '',
                  listArtikelContent[index]['imgPath'] ?? '',
                  listArtikelContent[index]['link'] ?? '',
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildArtikelCard(title, subTitle, imgPath, link) {
    return Container(
      width: 190,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 190,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage('assets/img/kopi.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: BlackRubikTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  subTitle,
                  style: BlackRubikTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Lihat selengkapnya ›',
                  style: GreenRubikTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
