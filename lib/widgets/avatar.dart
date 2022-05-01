import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;

  Avatar({
    required this.displayImage,
    required this.displayStatus,
  });

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    return Stack(children: [
      Container(
          padding: EdgeInsets.only(right: 4, left: 4),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(displayImage, width: 50, height: 50))),
      displayStatus
          ? Positioned(
              bottom: 0,
              right: 1.0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 13, 235, 128),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            )
          : SizedBox()
    ]);
  }
}
