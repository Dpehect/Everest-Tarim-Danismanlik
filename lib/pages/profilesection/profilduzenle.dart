import 'package:flutter/material.dart';

class ProfilDuzenle extends StatefulWidget {
  @override
  _ProfilDuzenleState createState() => _ProfilDuzenleState();
}

class _ProfilDuzenleState extends State<ProfilDuzenle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Düzenle'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar ve Profil Düzenle yazısı yanyana olacak
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, right: 120), // Container'a genel margin
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Avatar
                  GestureDetector(
                    onTap: () {
                      print('Avatara tıklandı');
                    },
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profil/pp.png'),
                      radius: 40.0,
                    ),
                  ),
                  SizedBox(width: 10.0), // Resim ve yazı arasındaki boşluk

                  // Profil Düzenle yazısı
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DuzenlemeSayfasi(),
                          ),
                        );
                      },
                      child: Text(
                        'Orhan Topaç',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      )),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30.0, right: 200),
              child: Text(
                'Profil Bilgileri',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  fontFamily: 'Manrope',
                ),
              ),
            ),

            SizedBox(height: 20.0),
            ProfilDuzenleTextField(hintText: 'İsim Soyisim'),
            SizedBox(height: 10.0),
            ProfilDuzenleTextField(hintText: 'E-posta veya Telefon'),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Kaydet butonuna tıklandığında yapılacak işlemler
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(9), // 0 radius creates a rectangle
                ),
                minimumSize: Size(316, 50), // Width and height of the button
                primary: Color(0xFF78B032), // Background color of the button
                onPrimary: Colors.white, // Text color of the button
              ),
              child: Text(
                'Profili Güncelle',
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(top: 30.0, right: 200),
              child: Text(
                'Şifremi Değiştir',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ProfilDuzenleTextField(hintText: 'Mevcut şifreniz'),
            SizedBox(height: 10.0),
            ProfilDuzenleTextField(hintText: 'Yeni şifreniz'),
            SizedBox(height: 10.0),
            ProfilDuzenleTextField(hintText: 'Yeni şifrenizi tekrar girin'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Kaydet butonuna tıklandığında yapılacak işlemler
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(9), // 0 radius creates a rectangle
                ),
                minimumSize: Size(316, 50), // Width and height of the button
                primary: Color(0xFF78B032), // Background color of the button
                onPrimary: Colors.white, // Text color of the button
              ),
              child: Text(
                'Şifremi Güncelle',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
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
