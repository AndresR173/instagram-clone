import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fakestagram/bloc/time_line_state.dart';
import 'package:fakestagram/model/publication.dart';
import 'package:fakestagram/repository/publication_repository.dart';
import 'time_line_event.dart';
import 'package:rxdart/rxdart.dart';

class TimeLineBloc extends Bloc<TimeLineEvent, TimeLineState> {
  PublicationRepository repo = PublicationRepository();
  final int pageSize;

  TimeLineBloc({
    this.pageSize = 10,
    TimeLineState initialState,
  }) : super(initialState);

  @override
  Stream<TimeLineState> mapEventToState(TimeLineEvent event) async* {
    print('Received event: $event');
    yield* event.when(loadContent: () async* {
      if (state.hasReachedEnd(this.pageSize)) yield state;

      yield state.copyWith(status: Status.loading);

      List<Publication> publications =
          await repo.getPublications(page: state.currentPage, limit: pageSize);

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
}
