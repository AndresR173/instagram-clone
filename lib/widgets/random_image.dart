import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  final String media;
  const RandomImage({Key key, this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      media,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.5,
    );
  }
}
