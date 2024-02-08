import 'package:flutter/material.dart';
import 'package:getagriculture/profilesection/AnalizePageProfile.dart';

class ProfileDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fixedWidth = 360.0;
    double fixedHeight = 300.0;
    double bottomPercentage = 280.0 / MediaQuery.of(context).size.height;
    double leftPercentage = 15.0 / MediaQuery.of(context).size.width;
    double lowerWidth = 360.0;
    double higherHeight = 250.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('40 Dekar Portakal- Osmaniye',
            style: TextStyle(fontSize: 18.0)),
      ),
      backgroundColor: Color.fromARGB(255, 241, 236, 236),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 30),
              _buildProfileCard(
                context,
                fixedWidth,
                fixedHeight,
                0.0,
                leftPercentage,
                'Arazi Kontrol Raporları',
                '23 Aralık 2023 - Pazartesi',
                Colors.white,
                [
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/file.png',
                    contentText: 'Topografik Özellikler ve Arazi Morfolojisi',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/file.png',
                    contentText: 'Erozyon Kontrolü ve Toprak Stabilitesi',
                    contentDate: '18 Aralık 2023 - Çarşamba',
                  ),
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/file.png',
                    contentText: 'Hava Kalitesi İncelemesi ve Emisyon Analizi',
                    contentDate: '11 Kasım 2023 - Salı',
                  ),
                ],
              ),
              SizedBox(height: 30),
              _buildSecondProfileCard(
                context,
                fixedWidth,
                fixedHeight,
                0.0,
                leftPercentage,
                'Analizler',
                Colors.white,
                [],
              ),
              SizedBox(height: 30),
              _buildThirdProfileCard(
                context,
                fixedWidth,
                fixedHeight,
                0.0,
                leftPercentage,
                'Yıllık MRL Haritası',
                '23 Aralık 2023 - Pazartesi',
                Colors.white,
                [
                  ProfileThirdCardContent(
                    iconPath: 'assets/images/profil/file.png',
                    contentText:
                        'Aktif gramajı 18g/L, 1 ton suya katılacak ilaç \n miktarı 2 L, Ağaç başı düşen su miktarı 25 L.\n \n',
                    contentDate:
                        'Buna göre; \n ((18x2)/1000)x25= 0,9gr Abamectin ağaç \n başı düşen miktar.',
                  ),
                ],
              ),
              SizedBox(height: 30),
              _buildFourthProfileCard(
                context,
                fixedWidth,
                fixedHeight,
                0.0,
                leftPercentage,
                'Verim',
                '23 Aralık 2023 - Pazartesi',
                Colors.white,
                [
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/order_light.png',
                    contentText: '2023 Yılı Tahmini Verim Raporu',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/order_light.png',
                    contentText: '2022 Yılı Tahmini Verim Raporu',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/order_light.png',
                    contentText: '2021 Yılı Tahmini Verim Raporu',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                ],
              ),
              SizedBox(height: 30),
              _buildFifthProfileCard(
                context,
                lowerWidth,
                higherHeight,
                0.0,
                leftPercentage,
                'Açık Hesap Bâkiyesi',
                '23 Aralık 2023 - Pazartesi',
                Colors.white,
                [
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/firstthird.png',
                    contentText: '1000 TL',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/second.png',
                    contentText: '650 TL',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                  ProfileCardContent(
                    iconPath: 'assets/images/profil/firstthird.png',
                    contentText: '1000 TL',
                    contentDate: '23 Aralık 2023 - Pazartesi',
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard(
    BuildContext context,
    double fixedWidth,
    double fixedHeight,
    double bottomPercentage,
    double leftPercentage,
    String title,
    String date,
    Color backgroundColor,
    List<ProfileCardContent> contentList,
  ) {
    return Container(
      width: fixedWidth,
      height: fixedHeight,
      margin: EdgeInsets.only(
        bottom: 0.0,
        left: MediaQuery.of(context).size.width * leftPercentage,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profil/reportsearch.png',
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(height: 25.0),
            for (var i = 0; i < contentList.length; i++)
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        contentList[i].iconPath,
                        width: 30.0,
                        height: 30.0,
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contentList[i].contentText,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            contentList[i].contentDate,
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (i < contentList.length - 1) SizedBox(height: 16.0),
                ],
              ),
            SizedBox(height: 16.0),
            Container(
              width: 327.0,
              height: 34.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xFF78B032),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnalizePageProfile()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      'Tümünü Görüntüle',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondProfileCard(
    BuildContext context,
    double fixedWidth,
    double fixedHeight,
    double bottomPercentage,
    double leftPercentage,
    String title,
    Color backgroundColor,
    List<SubProfileCard> subCardList,
  ) {
    return Container(
      width: fixedWidth,
      height: fixedHeight,
      margin: EdgeInsets.only(
        bottom: 0.0,
        left: MediaQuery.of(context).size.width * leftPercentage,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profil/documentfilter.png',
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(height: 25.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnalizePageProfile(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 152,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60.0,
                          left: 25.0,
                          child: Text(
                            'Toprak Analizi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          right: 55.0,
                          child: Image.asset(
                            'assets/images/profil/soil.png',
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    width: 152,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60.0,
                          left: 25.0,
                          child: Text(
                            'Yaprak Analizi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          right: 55.0,
                          child: Image.asset(
                            'assets/images/profil/leaf.png',
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnalizePageProfile(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 152,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60.0,
                          left: 40.0,
                          child: Text(
                            'Su Analizi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          right: 55.0,
                          child: Image.asset(
                            'assets/images/profil/wateringsoil.png',
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    width: 152,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60.0,
                          left: 25.0,
                          child: Text(
                            'Kalıntı Analizi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          right: 55.0,
                          child: Image.asset(
                            'assets/images/profil/moisture.png',
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThirdProfileCard(
    BuildContext context,
    double fixedWidth,
    double fixedHeight,
    double bottomPercentage,
    double leftPercentage,
    String title,
    String date,
    Color backgroundColor,
    List<ProfileThirdCardContent> contentList,
  ) {
    return Container(
      width: fixedWidth,
      height: fixedHeight,
      margin: EdgeInsets.only(
        bottom: 0.0,
        left: MediaQuery.of(context).size.width * leftPercentage,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profil/reportsearch.png',
                  width: 26.0,
                  height: 26.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(height: 25.0),
            for (var i = 0; i < contentList.length; i++)
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 85.0),
                        child: Image.asset(
                          contentList[i].iconPath,
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contentList[i].contentText,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            contentList[i].contentDate,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (i < contentList.length - 1) SizedBox(height: 16.0),
                ],
              ),
            SizedBox(height: 55.0),
            Container(
              width: 327.0,
              height: 34.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xFF78B032),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnalizePageProfile()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      'Tümünü Görüntüle',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFourthProfileCard(
    BuildContext context,
    double fixedWidth,
    double fixedHeight,
    double bottomPercentage,
    double leftPercentage,
    String title,
    String date,
    Color backgroundColor,
    List<ProfileCardContent> contentList,
  ) {
    return Container(
      width: fixedWidth,
      height: fixedHeight,
      margin: EdgeInsets.only(
        bottom: 0.0,
        left: MediaQuery.of(context).size.width * leftPercentage,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profil/efficiency.png',
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(height: 25.0),
            for (var i = 0; i < contentList.length; i++)
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        contentList[i].iconPath,
                        width: 30.0,
                        height: 30.0,
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contentList[i].contentText,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            contentList[i].contentDate,
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (i < contentList.length - 1) SizedBox(height: 16.0),
                ],
              ),
            SizedBox(height: 40.0),
            Container(
              width: 327.0,
              height: 34.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xFF78B032),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnalizePageProfile()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      'Tümünü Görüntüle',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFifthProfileCard(
    BuildContext context,
    double lowerWidth,
    double higherHeight,
    double bottomPercentage,
    double leftPercentage,
    String title,
    String date,
    Color backgroundColor,
    List<ProfileCardContent> contentList,
  ) {
    return Container(
      width: lowerWidth,
      height: higherHeight,
      margin: EdgeInsets.only(
        bottom: 0.0,
        left: MediaQuery.of(context).size.width * leftPercentage,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profil/wallet.png',
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(height: 25.0),
            for (var i = 0; i < contentList.length; i++)
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        contentList[i].iconPath,
                        width: 30.0,
                        height: 30.0,
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contentList[i].contentText,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            contentList[i].contentDate,
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (i < contentList.length - 1) SizedBox(height: 16.0),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class ProfileCardContent {
  final String iconPath;
  final String contentText;
  final String contentDate;

  ProfileCardContent({
    required this.iconPath,
    required this.contentText,
    required this.contentDate,
  });
}

class ProfileThirdCardContent {
  final String iconPath;
  final String contentText;
  final String contentDate;

  ProfileThirdCardContent({
    required this.iconPath,
    required this.contentText,
    required this.contentDate,
  });
}

class SubProfileCard {
  final String iconPath;
  final String text;

  SubProfileCard({
    required this.iconPath,
    required this.text,
  });
}
