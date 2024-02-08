import 'package:flutter/material.dart';
import 'DatabasePage3.dart';

class DetaySayfa extends StatelessWidget {
  final String image;
  final String labelText;

  DetaySayfa({required this.image, required this.labelText});

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
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              _buildSearchBar(),
              SizedBox(height: 16.0),
              _buildRectangle(image: image, labelText: labelText),
              SizedBox(height: 16.0),
              _buildSecondRectangle(
                  labelText2: 'Hastalıkları', context: context),
              SizedBox(height: 16.0),
              _buildSecondRectangle(
                  labelText2: 'Zararlıları', context: context),
              SizedBox(height: 16.0),
              _buildSecondRectangle(
                  labelText2: 'Bakım İşlemleri', context: context),
              SizedBox(height: 16.0),
              _buildSecondRectangle(labelText2: 'Çeşitler', context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(fontFamily: 'Roboto'),
              decoration: InputDecoration(
                labelText: 'Bilgi veri tabanı içerisinde ara',
                labelStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Image.asset(
              'assets/images/database/search.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRectangle({
    required String image,
    required String labelText,
  }) {
    return Container(
      width: double.infinity,
      height: 168,
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
            Image.asset(
              image,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: Text(
                labelText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondRectangle({
    required String labelText2,
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
                labelText2,
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
                        builder: (context) => DatabasePage3(
                              labelText: labelText,
                              labelText2: labelText2,
                              image: image,
                            )),
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
