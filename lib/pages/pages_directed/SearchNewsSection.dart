import 'package:flutter/material.dart';

class SearchNewsSection extends StatelessWidget {
  final String searchText;

  SearchNewsSection({required this.searchText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arama Sonuçları: $searchText'),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/news/notifications.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Bildirim butonu basılınca işlemleri ekle
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Arama sonuçları burada gösterilecek'),
      ),
    );
  }
}
