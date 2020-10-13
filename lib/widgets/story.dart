import 'package:flutter/material.dart';

import 'user_image.dart';

class Story extends StatelessWidget {
  final int index;
  const Story({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 4,
              left: 4,
              bottom: 4,
            ),
            child: UserImage(
                image: 'https://randomuser.me/api/portraits/med/men/6.jpg',
                radio: 35,
                width: 75),
          ),
          Text(
            "user $index",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
