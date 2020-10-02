import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fakestagram/bloc/time_line_state.dart';
import 'package:fakestagram/model/publication.dart';
import 'dart:math';
import 'time_line_event.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class TimeLineBloc extends Bloc<TimeLineEvent, TimeLineState> {
  final int pageSize;

  TimeLineBloc({
    this.pageSize = 5,
    TimeLineState initialState,
  }) : super(initialState);

  @override
  Stream<TimeLineState> mapEventToState(TimeLineEvent event) async* {
    print('Received event: $event');
    yield* event.when(loadContent: () async* {
      if (state.hasReachedEnd(this.pageSize)) yield state;

      yield state.copyWith(status: Status.loading);

      List<Publication> publications = await getPublications(
          offset: state.currentPage * pageSize, limit: pageSize);

      final updatedState = state.copyWith(
          publications: state.publications + publications,
          currentPage: state.currentPage + 1,
          status: Status.loaded);
      yield updatedState;
    });

    yield state;
  }

  @override
  Stream<Transition<TimeLineEvent, TimeLineState>> transformEvents(
    Stream<TimeLineEvent> events,
    TransitionFunction<TimeLineEvent, TimeLineState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  }

  Future<List<Publication>> getPublications({
    @required int offset,
    @required int limit,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    final publications =
        List<Publication>.generate(limit, (index) => getPublication());
    return publications;
  }

  Publication getPublication() {
    Publication publication = Publication()
      ..accountName = 'Endava'
      ..avatarImage = 'assets/images/post/avatar.jpg'
      ..media = 'https://picsum.photos/600?image=${Random().nextInt(80)}';
    return publication;
  }
}
