import 'package:flutter/material.dart';
import 'package:getagriculture/pages/pages_directed/fifteendays.dart';
import 'package:getagriculture/controllers/weather_controller.dart';
import 'package:get/get.dart';

class WeatherSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE5F3F6),
        appBar: AppBar(
          title: Text('HAVA DURUMU'),
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
        body: GetBuilder<WeatherController>(builder: (controller) {
          return ListView(
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
                          image: AssetImage(
                              'assets/images/weather/weathermain.png'),
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
                children: [
                  Container(
                    width: 64,
                    height: 80,
                    margin: EdgeInsets.only(
                      left: 30,
                      right: 10,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 18,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cuma',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'assets/images/weather/sunny.png',
                          width: 41,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '17° - 12°',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 80,
                    margin: EdgeInsets.only(
                      left: 1,
                      right: 7,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 18,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cmt',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'assets/images/weather/cloudy.png',
                          width: 41,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '17° - 12°',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 80,
                    margin: EdgeInsets.only(
                      left: 1,
                      right: 7,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 18,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Paz',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'assets/images/weather/günesli.png',
                          width: 41,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '17° - 12°',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 80,
                    margin: EdgeInsets.only(
                      left: 1,
                      right: 7,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 18,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pzt',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'assets/images/weather/lightning.png',
                          width: 41,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '17° - 12°',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FifteenDaysPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 64,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x1E000000),
                            blurRadius: 18,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              '15 Günlük\nTahmin',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            width: 41,
                            height: 25,
                            child: Image.asset(
                              'assets/images/weather/vector.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AKDENİZ BÖLGESİ GÜNLÜK HAVA DURUMU ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                            height: 0.07,
                            letterSpacing: -0.40,
                          ),
                        ),
                        // Add more text or widgets as needed
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 349,
                    height: 150,
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/weather/mapp.png',
                          width: 349,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
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
          );
        }),
      ),
    );
  }
}
