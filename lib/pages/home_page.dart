import 'package:flutter/material.dart';

import '../widgets/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black, child: _buildStoryFeed());
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
