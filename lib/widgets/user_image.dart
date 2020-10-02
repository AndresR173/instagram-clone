import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  final double width;
  final String image;
  final double radio;
  const UserImage({Key key, this.image, this.radio, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFA11B93),
                Color(0xFFD2164E),
                Color(0xFFF79B4A)
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              borderRadius: BorderRadius.all(Radius.circular(37.5))),
          width: width,
          height: width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(34))),
          width: width - 3,
          height: width - 3,
        ),
        CircleAvatar(
          radius: radio,
          backgroundImage: AssetImage(image),
        ),
      ],
    );
  }
}
