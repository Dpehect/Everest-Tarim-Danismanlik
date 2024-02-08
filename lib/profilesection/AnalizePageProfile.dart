import 'package:flutter/material.dart';

class AnalizePageProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 60),
            Image.asset(
              'assets/images/profil/soil.png',
              width: 30.0,
              height: 30.0,
            ),
            SizedBox(width: 8.0),
            Center(
              child: Text(
                'Toprak Analizi',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildTitleCard(
                  imageAsset: 'assets/images/profil/warning.png',
                  color: Color(0xFF3A561E),
                  text: 'Raporlara tıklayarak açabilir veya indirebilirsiniz',
                  onPressed: () {},
                  width: double.infinity,
                  height: 45.0,
                ),
                SizedBox(height: 20.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
                buildItemCard(
                  imageAsset: 'assets/images/profil/file.png',
                  color: Color(0xFF3A561E),
                  text: '2023 Yılı Tahmini Verim Raporu',
                  onPressed: () {},
                  onDownloadPressed: () {
                    // Handle download button press here
                    print('Download button pressed');
                  },
                  width: double.infinity,
                  height: 75.0,
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTitleCard({
    required String imageAsset,
    required Color color,
    required String text,
    required VoidCallback onPressed,
    required double width,
    required double height,
  }) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Adjust the background color as needed
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 25.0),
          Image.asset(
            imageAsset,
            width: 24.0,
            height: 24.0,
            color: color,
          ),
          SizedBox(width: 8.0), // Adjust the margin between image and text
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItemCard({
    required String imageAsset,
    required Color color,
    required String text,
    required VoidCallback onPressed,
    required VoidCallback onDownloadPressed, // New callback for download button
    required double width,
    required double height,
  }) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white, // Adjust the background color as needed
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imageAsset,
                width: 24.0,
                height: 24.0,
                color: color,
              ),
              SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '23 Aralık 2023 - Pazartesi',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Container for download icon and button
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF6FAEB), // Change the color as needed
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: GestureDetector(
              onTap: onDownloadPressed,
              child: Row(
                children: [
                  Icon(
                    Icons.download,
                    color: Color(0xFF4B6B20), // Change the color as needed
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'İndir',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF4B6B20), // Change the color as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
