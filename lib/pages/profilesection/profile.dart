import 'package:flutter/material.dart';
import 'package:getagriculture/controllers/profile_controller.dart';
import 'package:getagriculture/pages/profilesection/ProfileDetailCard.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardData = ProfileController.getCardData();

    return Scaffold(
      body: SingleChildScrollView(
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
              child: ProfileController.buildProfileHeader(context),
            ),
            ProfileController.buildWarningMessage(),
            ProfileController.buildParcelSection(),
            for (int i = 0; i < cardData.length; i += 2)
              ProfileController.buildCardSectionItem(
                cardData[i],
                (i + 1 < cardData.length) ? cardData[i + 1] : {},
                context,
              ),
          ],
        ),
      ),
    );
  }
}
