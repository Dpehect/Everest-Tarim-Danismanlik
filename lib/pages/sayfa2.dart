import 'package:flutter/material.dart';
import 'package:getagriculture/pages/pages_directed/DetaySayfa.dart';

class Sayfa2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 244, 241),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Bilgi Veri Tabanı',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Bilgi veri tabanı içerisinde ara',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(
                    context,
                    'Kart 1',
                    'Altındaki Metin 1',
                    'Altındaki Metin 2',
                    'https://placekitten.com/358/264',
                  ),
                  buildCard(
                    context,
                    'Kart 2',
                    'Altındaki Metin 3',
                    'Altındaki Metin 4',
                    'https://placekitten.com/358/264',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(
                    context,
                    'Kart 3',
                    'Altındaki Metin 5',
                    'Altındaki Metin 6',
                    'https://placekitten.com/358/264',
                  ),
                  buildCard(
                    context,
                    'Kart 4',
                    'Altındaki Metin 7',
                    'Altındaki Metin 8',
                    'https://placekitten.com/358/264',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(
                    context,
                    'Kart 5',
                    'Altındaki Metin 9',
                    'Altındaki Metin 10',
                    'https://placekitten.com/358/264',
                  ),
                  buildCard(
                    context,
                    'Kart 6',
                    'Altındaki Metin 11',
                    'Altındaki Metin 12',
                    'https://placekitten.com/358/264',
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, String text1,
      String text2, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetaySayfa(
                title: title, text1: text1, text2: text2, imageUrl: imageUrl),
          ),
        );
      },
      child: Container(
        width: 171,
        height: 230,
        margin: EdgeInsets.only(top: 34, left: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(8.0), // Set border radius here
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Image.network(imageUrl,
                width: double.infinity, height: 150, fit: BoxFit.cover),
            SizedBox(height: 8.0),
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}
