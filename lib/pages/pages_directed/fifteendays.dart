import 'package:flutter/material.dart';

void main() {
  runApp(FifteenDaysPage());
}

class FifteenDaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE5F3F6),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('15 GÜNLÜK HAVA DURUMU'), // Updated title
          centerTitle: true,
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/news/notifications.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                // Add your settings action here
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              width: 300,
              height: 310,
              margin: EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/weather/weathermain.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 22,
                    child: Container(
                      width: 80,
                      height: 60,
                      child: Text(
                        '12°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 100,
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        'assets/images/weather/lightning.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 22,
                    child: Container(
                      width: 100,
                      height: 60,
                      child: Text(
                        'Yağış: 90%\nNem: 51%\nRüzgar: 16 km/s',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 267,
                    left: 22,
                    child: Container(
                      width: 41,
                      height: 40,
                      child: Image.asset(
                        'assets/images/weather/location.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 265,
                    left: 65,
                    child: Container(
                      width: 100,
                      height: 60,
                      child: Text(
                        'Adana',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
            SizedBox(height: 36),
            Card(
              elevation: 3,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                title: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Adana'),
                        SizedBox(width: 36),
                        Text('13°/9°'),
                      ],
                    ),
                    SizedBox(width: 30),
                    Image.asset(
                      'assets/images/weather/lightning.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 15),
                    Text('Sağanak Yağışlı'),
                  ],
                ),
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, right: 10),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nem',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 1),
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Text(
                                    '%79\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rüzgar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 1),
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Text(
                                    '14 km/s\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yağış',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 1),
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Text(
                                    '%40\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
