import 'package:flutter/material.dart';

class DatabasePage4 extends StatelessWidget {
  final String image;
  final String labelText;
  final String labelText2;
  final String labelText3;

  DatabasePage4({
    required this.image,
    required this.labelText,
    required this.labelText2,
    required this.labelText3,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 244, 241),
      appBar: AppBar(
        title: Text(
          'Bilgi Veri Tabanı',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/news/notifications.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRectangle(
                context,
                image: image,
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Bilgi Veri Tabanı >  $labelText > $labelText2> \n $labelText3 ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              _buildLongTextRectangle(
                context,
                longText: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRectangle(
    BuildContext context, {
    required String image,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 168,
        margin: EdgeInsets.only(left: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                image,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 10.0,
                bottom: 10.0,
                child: Text(
                  labelText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLongTextRectangle(
    BuildContext context, {
    required String longText,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Huanglongbing (HLB) veya Sarı Nokta\n\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text:
                    'Huanglongbing (HLB), narenciye ağaçları üzerinde ciddi hasara neden olan, bakteriyel bir hastalık olarak bilinir. Bu hastalık, özellikle portakal, greyfurt ve mandalina gibi ticari olarak önemli olan citrus türlerini etkileyebilir. HLB, dünya genelinde citrus endüstrisinde büyük bir tehdit oluşturarak milyonlarca dolarlık ekonomik kayba yol açmaktadır.\n\n\n',
                style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter'),
              ),
              TextSpan(
                text: 'Hastalığın Etkeni ve Bulaşma Yolları:\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "HLB'nin etkeni, Candidatus Liberibacter cinsi bakterileridir. Bu bakteri, narenciye ağaçlarını özellikle psyllid adı verilen bir tür böcek aracılığıyla bulaştırır. Psyllidler, enfekte ağaçlardan alınan özleri sağlıklı ağaçlara taşıyarak hastalığın yayılmasına katkıda bulunurlar. Ayrıca, enfekte ağaçların tohumları da hastalığı taşıyabilir, bu da yeni fidanların enfekte olma riskini arttırır.\n\n",
                style: DefaultTextStyle.of(context).style.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter'),
              ),
              TextSpan(
                text: 'Belirtiler ve Tanı:\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "HLB'nin belirtileri genellikle yavaş bir şekilde ortaya çıkar ve hastalık ilk olarak yapraklarda belirginleşir. Yapraklarda sararma, küçülme ve düzensiz şekil bozuklukları gözlemlenir. Ayrıca, ağaçlarda çiçek ve meyve düşüklüğü yaşanabilir. Meyvelerde ise renk değişiklikleri, asimetrik şekil bozuklukları ve tat değişiklikleri gözlenebilir.\n\n",
                style: DefaultTextStyle.of(context).style.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter'),
              ),
              TextSpan(
                text: 'Ekonomik Etkiler: \n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "HLB'nin belirtileri genellikle yavaş bir şekilde ortaya çıkar ve hastalık ilk olarak yapraklarda belirginleşir. Yapraklarda sararma, küçülme ve düzensiz şekil bozuklukları gözlemlenir. Ayrıca, ağaçlarda çiçek ve meyve düşüklüğü yaşanabilir. Meyvelerde ise renk değişiklikleri, asimetrik şekil bozuklukları ve tat değişiklikleri gözlenebilir.\n\n",
                style: DefaultTextStyle.of(context).style.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter'),
              ),
              TextSpan(
                text: 'Mücadele ve Kontrol Yöntemleri: \n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text:
                    "HLB'ye karşı mücadelede, hastalığa dayanıklı citrus çeşitlerinin geliştirilmesi ve kullanılması önemlidir. Ayrıca, psyllid popülasyonunu kontrol altında tutmak için pestisit uygulamaları da yaygın olarak kullanılmaktadır. Tarım yetkilileri, enfekte ağaçların hızla tespit edilmesi ve izolasyonu için etkili denetim ve izleme programları uygularlar.Sonuç: Huanglongbing, citrus endüstrisi için ciddi bir tehdit oluşturan ve hala tam anlamıyla kontrol altına alınamamış bir hastalıktır. Küresel çapta araştırmalar ve işbirliği, HLB'nin etkilerini azaltmak ve citrus endüstrisini korumak için önemlidir. Bu süreçte, tarım uzmanları, çiftçiler ve araştırmacılar arasındaki işbirliği, HLB ile mücadelede daha etkili stratejilerin geliştirilmesine katkı sağlayabilir.\n\n",
                style: DefaultTextStyle.of(context).style.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Inter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
