import 'package:flutter/material.dart';
import 'package:getagriculture/profilesection/profilduzenle.dart';
import 'package:getagriculture/widgets/double_column_card.dart';
import 'package:getagriculture/profilesection/ProfileDetailCard.dart';

class ProfileController {
  static const double containerLeftMargin = 20.0;
  static const double containerRightMargin = 20.0;
  static const double containerTopMargin = 70.0;
  static const double textLeftMargin = 15.0;
  static const double textRightMargin = 15.0;

  static List<Map<String, dynamic>> getCardData() {
    return [
      {
        'imagePath': 'assets/images/profil/pointers.png',
        'text': '40 Dekar Portakal'
      },
      {
        'imagePath': 'assets/images/profil/pointers.png',
        'text': '40 Dekar Portakal'
      },
      {
        'imagePath': 'assets/images/profil/pointers.png',
        'text': '40 Dekar Portakal'
      },
      {
        'imagePath': 'assets/images/profil/pointers.png',
        'text': '40 Dekar Portakal'
      },
      {
        'imagePath': 'assets/images/profil/pointers.png',
        'text': '40 Dekar Portakal'
      },
      {
        'imagePath': 'assets/images/profil/pointers.png',
        'text': '40 Dekar Portakal'
      },
    ];
  }

  static Widget buildProfileHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: containerLeftMargin,
        right: containerRightMargin,
        top: containerTopMargin,
      ),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFF78B032),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: textLeftMargin,
                    right: textRightMargin,
                  ),
                  child: Text(
                    'Orhan Topaç',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: textLeftMargin,
                    right: textRightMargin,
                  ),
                  child: Text(
                    'Hoşgeldiniz, bilgilerinize ve raporlarınıza '
                    'buradan erişebilirsiniz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  margin: EdgeInsets.only(
                    left: textLeftMargin,
                    top: 15,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFFE9F4D3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilDuzenle(),
                        ),
                      );
                    },
                    child: Text(
                      'Profili Düzenle',
                      style: TextStyle(
                        color: Color(0xFF33491E),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, bottom: 25),
            child: Image.asset(
              'assets/images/profil/ppprofil.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildWarningMessage() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 15, right: 20),
      width: double.infinity,
      height: 43,
      decoration: ShapeDecoration(
        color: Color(0xFFB3DC7A),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFB3DC7A)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 16.0),
          Icon(
            Icons.warning,
            color: Colors.white,
          ),
          SizedBox(width: 8.0),
          Text(
            'Analizlerini görmek istediğiniz Parseli seçiniz',
            style: TextStyle(
              color: Color(0xFF3A561E),
              fontSize: 14,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildParcelSection() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 15, right: 20),
      width: double.infinity,
      height: 43,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color.fromARGB(255, 255, 255, 255)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 100.0),
          Image.asset(
            'assets/images/profil/map.png',
            width: 24.0,
            height: 24.0,
            color: Colors.black,
          ),
          SizedBox(width: 8.0),
          Text(
            'Parsellerim',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildCardSectionItem(Map<String, dynamic> data1,
      Map<String, dynamic> data2, BuildContext context,
      {double buttonHeight = 40.0,
      double buttonWidth = 150.0,
      double buttonRadius = 8.0}) {
    double cardWidth = (MediaQuery.of(context).size.width - 40) / 2 - 10;

    Widget buildCard(Map<String, dynamic> data) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        width: cardWidth,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 24.0,
              height: 24.0,
              child: Image.asset(
                data['imagePath'],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              data['text'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              width: buttonWidth,
              height: buttonHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(buttonRadius),
                color: Color(0xFF78B032), // Set the button color to #78B032
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProfileDetailCard(), // Use your ProfileDetailCard class
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                child: Text(
                  'Analizleri Gör',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: buildCard(data1),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: buildCard(data2),
        ),
      ],
    );
  }

  static Widget buildCardSection(
      List<Map<String, dynamic>> cardData, BuildContext context) {
    List<Widget> rows = [];

    for (int i = 0; i < cardData.length; i += 2) {
      if (i + 1 < cardData.length) {
        rows.add(buildCardSectionItem(cardData[i], cardData[i + 1], context));
      } else {
        rows.add(buildCardSectionItem(cardData[i], {}, context));
      }
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: rows,
      ),
    );
  }
}
