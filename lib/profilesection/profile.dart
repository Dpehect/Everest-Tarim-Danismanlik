import 'package:flutter/material.dart';
import 'package:getagriculture/profilesection/profilduzenle.dart';
import 'package:getagriculture/controllers/sayfa5_controller.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardData = Sayfa5Controller.getCardData();

    return Scaffold(
      body: Container(
        color: Color(0xFFF1F2F4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Sayfa5Controller.buildProfileHeader(context),
              Sayfa5Controller.buildWarningMessage(),
              Sayfa5Controller.buildParcelSection(),
              Sayfa5Controller.buildCardSection(cardData, context),
            ],
          ),
        ),
      ),
    );
  }
}
