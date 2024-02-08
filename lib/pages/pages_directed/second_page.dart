import 'package:flutter/material.dart';
import 'package:getagriculture/pages/news_section.dart';
import 'package:getagriculture/pages/currency_Section.dart';
import 'package:getagriculture/pages/database_section.dart';
import 'package:getagriculture/pages/weather_section.dart';
import 'package:getagriculture/profilesection/profile.dart';

class StatusBar2 extends StatelessWidget {
  final String pageTitle;

  StatusBar2({required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
      child: SafeArea(
        top: true,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      padding: const EdgeInsets.all(4.17),
                      decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
                      child: Icon(
                        Icons.share,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 3),
                    TextButton(
                      onPressed: () {
                        // Add your share functionality here
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0), // Adjust the left padding
                        child: Text(
                          'Paylaş',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.0, // Set height to 1.0
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String longText =
      'Tarım sektörü, teknolojik gelişmelerle birlikte yeni bir döneme hazırlanıyor. Yapay zeka (YZ) teknolojisinin tarım alanında kullanılması, çiftçilere daha akıllı, verimli ve sürdürülebilir tarım pratikleri sunma potansiyeli taşıyor. \n\n'
      'Bugün, tarım robotlarının sahada çığır açan bir role soyunduğunu görmekteyiz. Yapay zeka destekli tarım robotları, bitki tanıma, ot kontrolü, gübreleme ve sulama gibi temel tarım işlemlerini optimize etme kapasitesine sahiptir. Bu teknolojik mucize, çiftçilere daha fazla verimlilik sağlamakla kalmıyor, aynı zamanda doğal kaynakları daha etkili bir şekilde kullanmalarına olanak tanıyor.\n\n'
      'Yapay Zeka Destekli Tarım Robotları\'nın temel avantajları şu şekilde özetlenebilir:\n\n'
      'Bitki Tanıma ve Bakım:\n'
      'Yapay zeka algoritmaları, bitkilerin sağlığını izleyerek hastalıkları veya zararlıları önceden tespit edebilir ve böylece hızlı müdahale sağlar.\n\n'
      'Optimize Edilmiş Gübreleme ve Sulama:\n'
      'Robotlar, bitkilerin ihtiyaçlarına özel olarak gübre ve su uygulaması yapabilir, bu da kaynakların daha etkili kullanılmasını sağlar.\n\n'
      'Verimlilik ve İşgücü Tasarrufu:\n'
      'Otomatize edilmiş tarım işlemleri, çiftçilere zaman ve enerji tasarrufu sağlar, böylece daha geniş alanlara odaklanabilirler.\n\n'
      'Çevresel Duyarlılık:\n'
      'Yapay zeka destekli tarım robotları, kimyasal kullanımını azaltarak çevreye daha duyarlı bir tarım pratiği sunar.\n\n'
      'Bu inovatif teknoloji, tarım sektörünü daha sürdürülebilir, verimli ve rekabetçi bir hale getirerek geleceğin tarımının temellerini atmaktadadır. Yapay Zeka Destekli Tarım Robotları, çiftçilere daha fazla kontrol ve güç kazandırarak tarımın geleceğini şekillendiriyor.';

  SecondPage({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusBar2(pageTitle: title),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NewsSection(), // NewsSection'a güncellendi
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 5,
                ),
                color: Color(0xFFF5F5F5),
                child: Image.asset(
                  imageUrl,
                  height: 300, // Adjust the height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 34),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                longText,
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 10), // Adjust the top margin
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.black,
          currentIndex: 1,
          onTap: (index) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _getPageForIndex(index),
              ),
            );
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'Haber Akışı',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_1),
              label: 'Bilgi Veri Tabanı',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_exchange),
              label: 'Borsa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              label: 'Hava Durumu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPageForIndex(int index) {
    switch (index) {
      case 0:
        return NewsSection(); // NewsSection'a güncellendi
      case 1:
        return Sayfa2();
      case 2:
        return CurrencyPage();
      case 3:
        return WeatherSection();
      case 4:
        return Profile(); // ProfileSection'a güncellendi
      default:
        return NewsSection(); // Default page, you can change it according to your needs
    }
  }
}
