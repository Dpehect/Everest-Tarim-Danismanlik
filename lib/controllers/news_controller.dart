import 'package:flutter/material.dart';
import 'package:getagriculture/widgets/double_column_card.dart';
import 'package:getagriculture/widgets/single_column_card.dart';
import 'package:getagriculture/pages/pages_directed/DetaySayfa.dart';
import 'package:getagriculture/pages/pages_directed/SearchNewsSection.dart';
import 'package:getagriculture/models/news_data.dart';
import 'package:getagriculture/pages/pages_directed/second_page.dart';

class NewsController {
  static List<NewsData> getNewsDataList() {
    return [
      NewsData(
        extraText: '21.12.2023',
        title: 'Bitki Hastalıkları ve Zararlılarıyla Başa Çıkma Stratejileri',
        description: 'Yazıyı Oku ->',
        imageURL: 'assets/images/YATAYkart1.png',
      ),
      NewsData(
        extraText: '21.12.2023',
        title: 'Sürdürülebilir Tarım: Doğa Dostu Uygulamalar ve Avantajları',
        description: 'Yazıyı Oku ->',
        imageURL: 'assets/images/YATAYkart2.png',
      ),
      // Diğer haberler
    ];
  }

  static Widget buildNewsSection(bool isDoubleColumn, BuildContext context) {
    List<NewsData> newsDataList = getNewsDataList();
    return isDoubleColumn
        ? _buildDoubleColumn(newsDataList, context)
        : _buildSingleColumn(newsDataList, context);
  }

  static Widget _buildDoubleColumn(
      List<NewsData> newsDataList, BuildContext context) {
    return Column(
      children: [
        DoubleColumnCard(
          extraText1: newsDataList[0].extraText,
          title1: newsDataList[0].title,
          description1: newsDataList[0].description,
          imageURL1: newsDataList[0].imageURL,
          extraText2: newsDataList[1].extraText,
          title2: newsDataList[1].title,
          description2: newsDataList[1].description,
          imageURL2: newsDataList[1].imageURL,
          onTap1: () => _onCardTapped(context, newsDataList[0]),
          onTap2: () => _onCardTapped(context, newsDataList[1]),
        ),
        // Diğer çift sütun kartları
      ],
    );
  }

  static Widget _buildSingleColumn(
      List<NewsData> newsDataList, BuildContext context) {
    return Column(
      children: [
        SingleColumnCard(
          title: newsDataList[0].title,
          description: newsDataList[0].description,
          imageURL: newsDataList[0].imageURL,
          onTap: () => _onCardTapped(context, newsDataList[0]),
        ),
        // Diğer tek sütun kartları
      ],
    );
  }

  static void _onCardTapped(BuildContext context, NewsData newsData) {
    print("Card tapped: ${newsData.title}");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(
          title: newsData.title,
          imageUrl: newsData.imageURL,
        ),
      ),
    );
  }

  static void navigateToSearchPage(BuildContext context, String searchText) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchNewsSection(searchText: searchText),
      ),
    );
  }
}
