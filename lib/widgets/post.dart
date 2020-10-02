import 'package:fakestagram/widgets/likes.dart';
import 'package:fakestagram/widgets/user_image.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int index;

  const Post({Key key, this.index}) : super(key: key);

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
                            image: "assets/images/post/avatar.jpg",
                            radio: 12,
                            width: 30),
                      ),
                      Text("Account $index",
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
              child: Image.asset("assets/images/post/post$index.jpg"),
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
