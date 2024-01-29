import 'package:flutter/material.dart';
import 'package:getagriculture/models/card_data.dart';
import 'package:getagriculture/controllers/profile_controller.dart';
import 'package:getagriculture/profilesection/profilduzenle.dart';

class Sayfa5Controller {
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

  static Widget buildCardSectionItem(
      Map<String, dynamic> data, BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 3 - 40;

    return FractionallySizedBox(
      widthFactor: 0.45, // Adjust this factor as needed
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0),
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
          ],
        ),
      ),
    );
  }
}
