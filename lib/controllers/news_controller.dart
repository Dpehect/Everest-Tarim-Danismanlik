import 'package:flutter/material.dart';
import 'package:getagriculture/widgets/double_column_card.dart';
import 'package:getagriculture/widgets/single_column_card.dart';
import 'package:getagriculture/pages/pages_directed/DatabasePage2.dart';
import 'package:getagriculture/pages/pages_directed/SearchNewsSection.dart';
import 'package:getagriculture/models/news_data.dart';
import 'package:getagriculture/pages/pages_directed/second_page.dart';

class NewsController {
  static List<NewsDoubleData> getDoubleColumnData() {
    return [
      NewsDoubleData(
        extraText: '21.12.2023',
        title:
            'Bitki Hastalıkları ve Zararlılarıyla Başa Çıkma Stratejileri Bitki Hastalıkları ve Zararlılarıyla Başa',
        imageURL: 'assets/images/YATAYkart1.png',
      ),
      NewsDoubleData(
        extraText: '21.12.2023',
        title:
            'Organik Tarımın Gücü: Yerel Çiftçilerden Sofralarınıza Sağlık Dolu Lezzetler',
        imageURL: 'assets/images/YATAYkart2.png',
      ),
      NewsDoubleData(
        extraText: '21.12.2023',
        title:
            'İklim Değişikliğine Karşı Tarım: Adaptasyon ve Dayanıklılık Stratejileri',
        imageURL: 'assets/images/YATAYkart3.png',
      ),
      NewsDoubleData(
        extraText: '21.12.2023',
        title: 'Modern Tarım Teknolojileri: Verimliliği Artırmak İçin İpuçları',
        imageURL: 'assets/images/YATAYkart4.png',
      ),
    ];
  }

  static List<NewsSingleData> getSingleColumnData() {
    return [
      NewsSingleData(
        extraText: '21.12.2023',
        title:
            'İnovasyon Tarımında Çığır Açıyor: Yapay Zeka Destekli Tarım Robotları Sahada!',
        description: 'Tarım Teknoloji Haberleri',
        imageURL: 'assets/images/DİKEYkart1.png',
      ),
      NewsSingleData(
        extraText: '21.12.2023',
        title:
            'Organik Tarımın Gücü: Yerel Çiftçilerden Sofralarınıza Sağlık Dolu Lezzetler',
        description: 'Organik Haber',
        imageURL: 'assets/images/DİKEYkart2.png',
      ),
    ];
  }

  static Widget buildNewsSection(bool isDoubleColumn, BuildContext context) {
    List<dynamic> newsDataList =
        isDoubleColumn ? getDoubleColumnData() : getSingleColumnData();

    return isDoubleColumn
        ? _buildDoubleColumn(newsDataList.cast<NewsDoubleData>(), context)
        : _buildSingleColumn(newsDataList.cast<NewsSingleData>(), context);
  }

  static Widget _buildDoubleColumn(
      List<NewsDoubleData> newsDataList, BuildContext context) {
    List<Widget> cards = [];

    for (int i = 0; i < newsDataList.length; i += 2) {
      if (i + 1 < newsDataList.length) {
        cards.add(
          DoubleColumnCard(
            extraText1: newsDataList[i].extraText,
            title1: newsDataList[i].title,
            imageURL1: newsDataList[i].imageURL,
            extraText2: newsDataList[i + 1].extraText,
            title2: newsDataList[i + 1].title,
            imageURL2: newsDataList[i + 1].imageURL,
            onTap1: () => _onCardTapped(context, newsDataList[i]),
            onTap2: () => _onCardTapped(context, newsDataList[i + 1]),
          ),
        );
      } else {
        cards.add(
          SingleColumnCard(
            title: newsDataList[i].title,
            description: '',
            imageURL: newsDataList[i].imageURL,
            onTap: () => _onCardTapped(context, newsDataList[i]),
          ),
        );
      }
    }

    return Column(
      children: cards,
    );
  }

  static Widget _buildSingleColumn(
      List<NewsSingleData> newsDataList, BuildContext context) {
    List<Widget> cards = [];

    for (int i = 0; i < newsDataList.length; i++) {
      cards.add(
        SingleColumnCard(
          title: newsDataList[i].title,
          description: newsDataList[i].description,
          imageURL: newsDataList[i].imageURL,
          onTap: () => _onCardTapped(context, newsDataList[i]),
        ),
      );
    }

    return Column(
      children: cards,
    );
  }

  static void _onCardTapped(BuildContext context, dynamic newsData) {
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
