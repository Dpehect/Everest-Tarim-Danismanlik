import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyPage(),
    );
  }
}

class CurrencyPage extends StatefulWidget {
  @override
  _Sayfa3State createState() => _Sayfa3State();
}

class _Sayfa3State extends State<CurrencyPage> {
  List<bool> isSelected = [false, false, false, false, false];
  TextEditingController searchController = TextEditingController();
  bool showSearchResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Container(
              margin: EdgeInsets.only(left: 40.0),
              child: Center(
                child: Text('Borsa'),
              ),
            ),
            actions: [
              IconButton(
                icon: Image.asset(
                  'assets/images/news/notifications.png',
                  width: 24,
                  height: 24,
                ),
                onPressed: () {
                  // Bildirim butonu basılınca işlemleri ekle
                },
              ),
            ],
            expandedHeight: 60.0, // Adjust the height as needed
            floating: false,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {
                        // Show the search results only if the search bar is not empty
                        showSearchResults = value.isNotEmpty;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Borsa içerisinde ara',
                      suffixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: SizedBox(width: 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1.0, 0, 1.0, 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text('Cinsi'),
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 40,
                        child: Text('Br'),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text('En Düşük'),
                      ),
                      Text('En Yüksek'),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE7F1E8),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: showSearchResults
                        ? SearchResultItem('Biber', '27.00', '20.00')
                        : ExpansionTile(
                            title: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Image.asset(
                                        'assets/images/borsa/brokoli.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                    );
                                  },
                                );
                              },
                              child: CustomExpansionTileTitle(),
                            ),
                            children: [
                              ListTile(
                                title: Image.asset(
                                  'assets/images/borsa/graph.jpg',
                                  width: double.infinity,
                                  height: 250,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  5,
                                  (index) => buildButton(index),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(int index) {
    return Container(
      width: 70,
      height: 30,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1),
        color: isSelected[index] ? Colors.green : Colors.white,
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
          child: Text(
            'Günlük',
            style: TextStyle(
              color: isSelected[index] ? Colors.white : Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

class CustomExpansionTileTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            'assets/images/borsa/brokoli.png',
            width: 30,
            height: 30,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BROKOLİ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Son Güncelleme 26.12.2023',
                style: TextStyle(fontSize: 8),
              ),
            ],
          ),
          SizedBox(width: 10),
          Text(
            'KG',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(width: 10),
          Text(
            '10.00',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 30),
          Text(
            '20.00',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class SearchResultItem extends StatelessWidget {
  final String name;
  final String highestPrice;
  final String lowestPrice;

  SearchResultItem(this.name, this.highestPrice, this.lowestPrice);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/borsa/brokoli.png',
            width: 30,
            height: 30,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BROKOLİ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Son Güncelleme 26.12.2023',
                style: TextStyle(fontSize: 8),
              ),
            ],
          ),
          SizedBox(width: 10),
          Text(
            'KG',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(width: 10),
          Text(
            '10.00',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 30),
          Text(
            '20.00',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
