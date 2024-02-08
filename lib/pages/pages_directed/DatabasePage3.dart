import 'package:flutter/material.dart';
import 'package:getagriculture/pages/pages_directed/DatabasePage4.dart';

class DatabasePage3 extends StatelessWidget {
  final String labelText;
  final String labelText2;
  final String image;

  DatabasePage3({
    required this.labelText,
    required this.labelText2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 244, 241),
      appBar: AppBar(
        title: Text(
          'Bilgi Veri Tabanı',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/news/notifications.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Bilgi Veri Tabanı >  $labelText > $labelText2 ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              _buildSecondRectangle(
                labelText3: 'Huanglongbing (HLB) veya Sarı Nokta',
                context: context,
              ),
              SizedBox(height: 16.0),
              _buildSecondRectangle(
                labelText3: 'Narenciye Cüce Virüsü',
                context: context,
              ),
              // Add other rectangles as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSecondRectangle({
    required String labelText3,
    required BuildContext context,
  }) {
    return Container(
      width: double.infinity,
      height: 52,
      margin: EdgeInsets.only(left: 17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 15.0,
              bottom: 15.0,
              child: Text(
                labelText3,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Positioned(
              left: 290.0,
              bottom: 10.0,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DatabasePage4(
                        labelText: labelText, // Pass labelText to DatabasePage4
                        labelText2: labelText2,
                        labelText3: labelText3,
                        image: image,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFABCAAC),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
