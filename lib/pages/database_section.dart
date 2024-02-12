import 'package:flutter/material.dart';
import 'package:getagriculture/pages/pages_directed/DatabasePage2.dart';
import 'package:getagriculture/pages/pages_directed/notifications.dart';

class Sayfa2 extends StatelessWidget {
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsPage(),
                ),
              );
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
              Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width -
                    32, // Adjust width as needed
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
                        width: 20,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.0),
              _buildRectangle(
                context,
                image: 'assets/images/database/narenciye.jpg',
                labelText: 'NARENCİYE',
              ),
              SizedBox(height: 16.0),
              _buildRectangle(
                context,
                image: 'assets/images/database/elma.jpg',
                labelText: 'ELMA',
              ),
              SizedBox(height: 16.0),
              _buildRectangle(
                context,
                image: 'assets/images/database/biber.jpg',
                labelText: 'BİBER',
              ),
              // Add other rectangles as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRectangle(
    BuildContext context, {
    required String image,
    required String labelText,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetaySayfa(
              image: image,
              labelText: labelText,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 90,
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
      ),
    );
  }
}
