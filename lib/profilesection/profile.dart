import 'package:flutter/material.dart';
import 'package:getagriculture/profilesection/profilduzenle.dart';
import 'package:getagriculture/controllers/profile_controller.dart';
import 'package:getagriculture/profilesection/ProfileDetailCard.dart';

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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileDetailCard(),
                    ),
                  );
                },
                child: Sayfa5Controller.buildProfileHeader(context),
              ),
              Sayfa5Controller.buildWarningMessage(),
              Sayfa5Controller.buildParcelSection(),
              for (var data in cardData)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileDetailCard(),
                      ),
                    );
                  },
                  child: Sayfa5Controller.buildCardSectionItem(data, context),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
