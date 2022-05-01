import 'package:facebook/assets.dart';
import 'package:facebook/widgets/appBarButtons.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(prithvi),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Positioned(
              left: 5,
              top: 5,
              child: AppBarButtons(
                  buttonIcon: Icons.add,
                  iconColor: Colors.blue,
                  buttonAction: () {
                    print("CREATE NEW STORY");
                  }),
            ),
            Positioned(
                bottom: 10,
                left: 10,
                child: Text("Add to Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )))
          ],
        ));
  }
}
