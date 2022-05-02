import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/appBarButtons.dart';
import 'package:flutter/material.dart';
import 'sections/headerButtonSection.dart';
import 'sections/roomSection.dart';
import 'sections/statusSection.dart';

class Home extends StatelessWidget {
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text('facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )),
            actions: [
              AppBarButtons(
                  buttonIcon: Icons.search,
                  buttonAction: () {
                    print("Go to Search screen");
                  }),
              AppBarButtons(
                  buttonIcon: Icons.chat,
                  buttonAction: () {
                    print("Go to Messenger screen");
                  }),
            ],
          ),
          body: ListView(children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
          ])),
    );
  }
}
