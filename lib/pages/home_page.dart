import 'package:fakestagram/widgets/post.dart';
import 'package:flutter/material.dart';

import '../widgets/story.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return _buildStoryFeed();
            } else {
              return Post(index: index - 1);
            }
          }),
    );
  }

  Column _buildStoryFeed() {
    return Column(
      children: <Widget>[
        Container(
          height: 110,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int sIndex) {
                return Story(index: sIndex);
              }),
        ),
        Container(
          height: 1,
          color: Color(0xFF212121),
        ),
        Divider(),
      ],
    );
  }
}
