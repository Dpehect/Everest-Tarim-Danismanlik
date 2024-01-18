import 'package:flutter/material.dart';

class ProfilDuzenle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Düzenle'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar
              GestureDetector(
                onTap: () {
                  // Resme tıklandığında yapılacak işlemler
                  print('Resme tıklandı');
                },
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profil/ppprofil.png'),
                  radius: 40.0,
                ),
              ),
              SizedBox(height: 10.0),
              // Düzenleme ikonu
              GestureDetector(
                onTap: () {
                  // Kalem ikonuna tıklandığında DuzenlemeSayfasi sayfasına yönlendir
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DuzenlemeSayfasi(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // Altındaki metin
              Text(
                'Profil Fotoğrafını Düzenle',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 20.0),
              // Rectangle içinde isim ve soyisim girişi
              ProfilDuzenleTextField(hintText: 'İsim Soyisim'),
              SizedBox(height: 10.0),
              // Rectangle içinde e-posta veya telefon girişi
              ProfilDuzenleTextField(hintText: 'E-posta veya Telefon'),
              SizedBox(height: 10.0),
              // İkinci rectangle'ın altına buton ekleme
              ElevatedButton(
                onPressed: () {
                  // Kaydet butonuna tıklandığında yapılacak işlemler
                },
                child: Text('Kaydet'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF78B032), // Buton arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  textStyle: TextStyle(
                    color: Colors.white, // Metin rengi
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              // İkinci kısım
              ProfilDuzenleTextField(hintText: 'Mevcut şifreniz'),
              SizedBox(height: 10.0),
              ProfilDuzenleTextField(hintText: 'Yeni şifreniz'),
              SizedBox(height: 10.0),
              ProfilDuzenleTextField(hintText: 'Yeni şifrenizi tekrar girin'),
              SizedBox(height: 20.0),
              // İkinci rectangle'ın altına buton ekleme
              ElevatedButton(
                onPressed: () {
                  // Profili Düzenle butonuna tıklandığında yapılacak işlemler
                },
                child: Text(
                  'Profili Düzenle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF78B032),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilDuzenleTextField extends StatelessWidget {
  final String hintText;

  const ProfilDuzenleTextField({Key? key, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.0,
      height: 45.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: TextStyle(color: Color(0xFF989898)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DuzenlemeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DüzenlemeSayfasi'nın içeriği buraya eklenebilir
    return Scaffold(
      appBar: AppBar(
        title: Text('Düzenleme Sayfası'),
      ),
      body: Center(
        child: Text('Bu sayfa düzenleme için kullanılabilir.'),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: ProfilDuzenle(),
    ),
  );
}
