import 'package:flutter/material.dart';
import 'package:getagriculture/controllers/main_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              MainController.printCurrentIndex(_currentIndex);
            });
          },
          items: List.generate(
            _pages.length,
            (index) => BottomNavigationBarItem(
              icon: Image.asset(
                _iconPaths[index],
                width: 24,
                height: 24,
                color: _currentIndex == index ? Colors.green : Colors.black,
              ),
              label: '',
            ),
          ),
        ),
      ),
    );
  }
}
