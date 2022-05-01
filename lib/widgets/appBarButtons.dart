import 'package:flutter/material.dart';

class AppBarButtons extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  AppBarButtons({
    required this.buttonIcon,
    required this.buttonAction,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(
          Icons.search,
          color: Colors.black,
          size: 25,
        ),
        onPressed: () {
          print("Go to Search screen");
        },
      ),
    );
  }
}
