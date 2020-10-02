import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/time_line_bloc.dart';
import '../bloc/time_line_state.dart';
import '../widgets/post.dart';
import '../widgets/story.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeLineBloc, TimeLineState>(
        builder: (BuildContext context, TimeLineState state) {
      // loading publications
      if (state.isInitialState) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } // rendering publications
      else if (state.status == Status.loaded) {
        return _buildLoaded(context, state);
      } else {
        return _buildLoaded(context, state);
      }
    });
  }

  Container _buildLoaded(BuildContext context, TimeLineState state) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
          itemCount: state.hasReachedEnd(3)
              ? state.publications.length
              : state.publications.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return _buildStoryFeed();
            } else {
              return Post(state.publications.elementAt(index - 1));
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
