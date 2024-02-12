import 'package:flutter/material.dart';

class ReportPageProfile extends StatelessWidget {
  final bool isImageAvailable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 218, 218),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: AppBar(
                toolbarHeight: 250.0,
                centerTitle: true,
                leading: Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    iconSize: 24.0,
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Image.asset(
                        'assets/images/profil/logotarım.png',
                        width: 130.0,
                        height: 100.0,
                      ),
                    ),
                    Text(
                      'Yücel Tarım İşletmesi',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '60 Dekar Nova Parseli',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 21.0),
                    SizedBox(
                      width: 130.0,
                      height: 40,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                'assets/images/profil/calendar.png',
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Text(
                              '20.12.2023',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isImageAvailable,
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/YATAYkart1.png',
                        width: 400, height: 200),
                    Image.asset('assets/images/YATAYkart2.png',
                        width: 400, height: 200),
                    Image.asset('assets/images/YATAYkart3.png',
                        width: 400, height: 200),
                    // Add more images as needed
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Tespitler",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 10),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text:
                          'Yaprak ve meyvelerde yoğunluk riskli seviyelerde\npas akarı bulunmakta, ilaçlama tavsiye ediliyor.'),
                  Divider(height: 1, color: Color(0xFFD9D9D9)),
                  RowItem(
                      image: 'assets/images/profil/insect.png',
                      text:
                          'Parselde kırmızı örümcek ergini ve yumurtası\nmevcut, popülasyon ekonomik zarar eşiğinin\naltında, takip edilecek.'),
                  Divider(height: 1, color: Color(0xFFD9D9D9)),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text:
                          'Akdeniz meyve sineği sayısının belirlenmesi\namacıyla parselin belirli noktalarına tuzaklar\nasılacak.'),
                  Divider(height: 1, color: Color(0xFFD9D9D9)),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text: 'Meyve üzerinde kara benekler mevcut.'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Tavsiye Uygulamalar",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 10),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text:
                          'Damlama borularının mesafesi, ağaç taç izdüşümüne göre ayarlanması gerekiyor.'),
                  Divider(height: 1, color: Color(0xFFD9D9D9)),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text:
                          'Meyvede çatlamayı engellemek için uygulama yapmak gerekiyor. Reçete aşağıda belirtilmiştir.'),
                  Divider(height: 1, color: Color(0xFFD9D9D9)),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text:
                          'Meyveniz ortalama 45mm çapında ve ortalama 55g ağırlığındadır (10 adet meyveden örnek alınarak ortalama hesaplanmıştır).'),
                  Divider(height: 1, color: Color(0xFFD9D9D9)),
                  RowItem(
                      image: 'assets/images/profil/file-searcher.png',
                      text: 'Meyve üzerinde kara benekler mevcut.'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Öneriler",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 10),
                  RowItem(
                      image: 'assets/images/profil/advice.png',
                      text:
                          'Pas akarı için ilaçlama yapılacaksa, kırmızı örümcek yoğunluğunun artmaması ve yakın zamanda olası bir ekstra ilaçlama olmaması için kırmızı örümcek ergin ve yumurta ilacının da atılması önerilir.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String? image;
  final String text;

  const RowItem({
    Key? key,
    this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          EllipseContainer(
            child: Image.asset(
              image!,
              width: 24.0,
              height: 24.0,
            ),
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EllipseContainer extends StatelessWidget {
  final Widget child;

  const EllipseContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        shape: BoxShape.circle,
      ),
      child: Center(child: child),
    );
  }
}
