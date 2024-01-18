import 'package:flutter/material.dart';

class DoubleColumnCard extends StatelessWidget {
  final String extraText1;
  final String title1;
  final String description1;
  final String imageURL1;

  final String extraText2;
  final String title2;
  final String description2;
  final String imageURL2;

  final VoidCallback onTap1;
  final VoidCallback onTap2;

  DoubleColumnCard({
    required this.extraText1,
    required this.title1,
    required this.description1,
    required this.imageURL1,
    required this.extraText2,
    required this.title2,
    required this.description2,
    required this.imageURL2,
    required this.onTap1,
    required this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCard(extraText1, title1, description1, imageURL1, onTap1),
        _buildCard(extraText2, title2, description2, imageURL2, onTap2),
      ],
    );
  }

  Widget _buildCard(String extraText, String title, String description,
      String imageURL, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 3,
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageURL,
                  height: 150, width: double.infinity, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  extraText,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
