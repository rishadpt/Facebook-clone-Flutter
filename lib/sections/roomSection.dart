import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          children: [
            CreateRoomButton(),
            Avatar(
              displayImage: dq,
              displayStatus: true,
            ),
            Avatar(displayImage: mamooty, displayStatus: true),
            Avatar(displayImage: lal, displayStatus: true),
            Avatar(displayImage: aishu, displayStatus: true),
            Avatar(displayImage: sb, displayStatus: true),
            Avatar(displayImage: sahal, displayStatus: true),
            Avatar(displayImage: dq, displayStatus: true),
            Avatar(displayImage: mamooty, displayStatus: true),
            Avatar(displayImage: lal, displayStatus: true),
            Avatar(displayImage: aishu, displayStatus: true),
            Avatar(displayImage: sb, displayStatus: true),
            Avatar(displayImage: sahal, displayStatus: true),
          ],
        ));
  }

  Widget CreateRoomButton() {
    return Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(width: 1.1, color: Colors.blue),
          ),
          onPressed: () {
            print("Create Room");
          },
          icon: Icon(Icons.video_call, color: Colors.purple),
          label: Text("Create \nRoom"),
        ));
  }
}
