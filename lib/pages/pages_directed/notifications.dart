import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bildirimler'),
        centerTitle: true,
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 22),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE9F4D3),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/bildirim/alikoc.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  '"İnovasyon Tarımında Çığır Açıyor: Yapay\nZeka Destekli Tarım Robotları Sahada!"',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10), // İki ikili arasında bir boşluk ekledik
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 22),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE9F4D3),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/bildirim/alikoc.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  '"Organik Tarımın Gücü: Yerel Çiftçilerden\nSofralarınıza Sağlık Dolu Lezzetler"',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
