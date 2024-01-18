import 'package:flutter/material.dart';

class SingleColumnCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;
  final VoidCallback onTap;

  SingleColumnCard({
    required this.title,
    required this.description,
    required this.imageURL,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageURL,
                height: 150, width: double.infinity, fit: BoxFit.cover),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Text(
                description,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
