import 'package:flutter/material.dart';
import 'package:getagriculture/controllers/news_controller.dart';
import 'package:getagriculture/pages/pages_directed/notifications.dart';

class NewsSection extends StatefulWidget {
  @override
  _NewsSectionState createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  bool isDoubleColumn = false;
  String leadingIcon = 'assets/images/news/birinci.png';
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: isDoubleColumn ? Text('HABER AKIŞI') : Text('HABER AKIŞI'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isDoubleColumn = !isDoubleColumn;
                leadingIcon = isDoubleColumn
                    ? 'assets/images/news/ikinci.png'
                    : 'assets/images/news/birinci.png';
              });
            },
            icon: Image.asset(
              leadingIcon,
              width: 24,
              height: 24,
            ),
          ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        style: TextStyle(fontFamily: 'Roboto'),
                        decoration: InputDecoration(
                          labelText: 'Haberler içerisinde ara',
                          labelStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          NewsController.navigateToSearchPage(
                              context, searchController.text);
                        },
                        child: Image.asset(
                          'assets/images/database/search.png',
                          width: 20,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            NewsController.buildNewsSection(isDoubleColumn, context),
          ],
        ),
      ),
    );
  }
}
