import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            StoryCard(
              labelText: "Add to Story",
              story: prithvi,
              avatar: prithvi,
              createStoryStatus: true,
            ),
            StoryCard(
              labelText: "Mohanlal",
              story: lalstory,
              avatar: lal,
            ),
            StoryCard(
              labelText: "Yash",
              story: kgf,
              avatar: yash,
            ),
            StoryCard(
              labelText: "Dulquer salmaan",
              story: dqeid,
              avatar: dq,
            ),
            StoryCard(
              labelText: "Mamooty",
              story: janaganamana,
              avatar: mamooty,
            ),
            StoryCard(
              labelText: "Sahal abdul Samad",
              story: sahalstory,
              avatar: sahal,
            ),
            StoryCard(
              labelText: "aishu__",
              story: aishustory,
              avatar: aishu,
            ),
          ],
        ));
  }
}
