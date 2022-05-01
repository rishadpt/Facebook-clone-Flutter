import 'package:facebook/widgets/appBarButtons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Facebook',
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
          ],
        ),
        body: const Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
