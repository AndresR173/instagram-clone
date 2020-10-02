import 'package:fakestagram/bloc/time_line_event.dart';
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
  final _scrollController = ScrollController();
  final _scrollThreshold = 300.0;
  double _scrollPosition = 0;

  TimeLineBloc _timeLineBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _timeLineBloc = BlocProvider.of<TimeLineBloc>(context);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if ((_scrollPosition - currentScroll).abs() < 100) {
      return;
    }

    if (maxScroll - currentScroll <= _scrollThreshold) {
      print('send loadevent');
      _timeLineBloc.add(TimeLineEvent.loadContent());
    }
    _scrollPosition = currentScroll;
  }

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
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return _buildStoryFeed();
            } else {
              return index >= state.publications.length
                  ? BottomLoader()
                  : Post(state.publications.elementAt(index - 1));
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

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: SizedBox(
          width: 33,
          height: 33,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
          ),
        ),
      ),
    );
  }
}
