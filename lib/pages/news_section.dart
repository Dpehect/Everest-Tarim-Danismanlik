import 'package:flutter/material.dart';
import 'package:getagriculture/controllers/news_controller.dart';
import 'package:getagriculture/pages/pages_directed/notifications.dart';

class NewsSection extends StatefulWidget {
  @override
  _NewsSectionState createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  bool isDoubleColumn = false; // Set initial view to single column

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isDoubleColumn
            ? Text('HABER AKIŞI')
            : Center(
                child: Text('HABER AKIŞI'),
              ),
        actions: [
          isDoubleColumn
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isDoubleColumn = !isDoubleColumn;
                    });
                  },
                  icon: Image.asset(
                    'assets/images/news/ikinci.png',
                    width: 24,
                    height: 24,
                  ),
                )
              : Container(), // This will create an empty space when in single column mode
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
      body: NewsController.buildNewsSection(isDoubleColumn, context),
    );
  }
}
