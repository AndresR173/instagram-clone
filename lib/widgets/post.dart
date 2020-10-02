import 'package:fakestagram/model/publication.dart';
import 'package:fakestagram/widgets/likes.dart';
import 'package:fakestagram/widgets/random_image.dart';
import 'package:fakestagram/widgets/user_image.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final Publication publication;

  Post(this.publication);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 0, bottom: 25),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 5),
                        child: UserImage(
                            image: publication.avatarImage,
                            radio: 12,
                            width: 30),
                      ),
                      Text(publication.accountName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.more_vert, color: Colors.white),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: RandomImage(media: publication.media),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10, top: 7, bottom: 7),
                  child: Row(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Colors.white,
                          )),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.chat_bubble_outline,
                              size: 30, color: Colors.white)),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          child:
                              Icon(Icons.send, size: 30, color: Colors.white)),
                    ],
                  ),
                )),
                Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.save, size: 30, color: Colors.white)),
              ],
            ),
            Row(
              children: <Widget>[
                Container(padding: EdgeInsets.only(left: 13), child: Likes())
              ],
            )
          ],
        ));
  }
}
