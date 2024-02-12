import 'package:flutter/material.dart';
import 'package:getagriculture/controllers/main_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = MainController.getPages();
  final List<String> _iconPaths = MainController.getIconPaths();
  final List<String> _tabLabels = [
    'Haber Akışı',
    'Bilgi Veri Tabanı',
    'Borsa',
    'Hava Durumu',
    'Profil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 70.0,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            _pages.length,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                  MainController.printCurrentIndex(_currentIndex);
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    _iconPaths[index],
                    width: 24,
                    height: 24,
                    color: _currentIndex == index ? Colors.green : Colors.black,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    _tabLabels[index],
                    style: TextStyle(
                      fontSize: 12.0,
                      color:
                          _currentIndex == index ? Colors.green : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
