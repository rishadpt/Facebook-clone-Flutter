import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            headerButton(
                buttonText: "Live",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Go to Live");
                },
                buttonColor: Colors.red),
            verticalDivider,
            headerButton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("Go to Photo");
                },
                buttonColor: Colors.blue),
            verticalDivider,
            headerButton(
                buttonText: "Room",
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Go to Chat room");
                },
                buttonColor: Colors.purple),
          ],
        ));
  }
}
