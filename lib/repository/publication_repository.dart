import 'dart:math';

import 'package:dio/dio.dart';
import 'package:fakestagram/model/publication.dart';
import 'package:meta/meta.dart';

class PublicationRepository {
  Future<List<Publication>> getPublications({
    @required int page,
    @required int limit,
  }) async {
    Response response;
    List<Publication> publications = [];
    try {
      response = await Dio()
          .get("https://randomuser.me/api/?page=$page&results=$limit&seed=abc");
      int resultSize = response.data['results'].length;

      publications = List<Publication>.generate(resultSize,
          (index) => getPublication(response.data['results'][index]));
    } catch (e) {
      print(e);
    }

    return publications;
  }

  Publication getPublication(Map user) {
    Publication publication = Publication()
      ..accountName = user['login']['username']
      ..avatarImage = user['picture']['thumbnail']
      ..media = 'https://picsum.photos/600?image=${Random().nextInt(80)}';
    return publication;
  }
}
