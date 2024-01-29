import 'package:flutter/material.dart';

class AnalizePageProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analize Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'Your Text Here',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Button pressed action
                    },
                    child: Text('Button'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
