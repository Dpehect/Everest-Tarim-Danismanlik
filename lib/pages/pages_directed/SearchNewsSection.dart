import 'package:flutter/material.dart';

class SearchNewsSection extends StatelessWidget {
  final String searchText;

  SearchNewsSection({this.searchText = ""});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyRectangle(
            icon: Icons.star,
            text: 'İlgili Yazılar',
            color: Colors.blue,
          ),
          SizedBox(height: 16),
          Text('Arama Sonuçları: $searchText'),
        ],
      ),
    );
  }
}

class MyRectangle extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  MyRectangle({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
